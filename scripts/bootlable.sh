img=rootfs.raw

rm -f $img

dd if=/dev/zero of=$img bs=1G count=5

losetup -f rootfs.raw 

device=$(losetup -a | awk -F ':' '{print $1}')

#device=rootfs.raw

parted ${device} mktable msdos

disk_size=$(parted ${device} unit mb print | grep '^Disk .*: .*MB' | cut -d" " -f 3 | sed -e "s/MB//")

grub_version=$(grub-install -V|sed 's/.* \([0-9]\).*/\1/')

if [ $grub_version -eq 0 ] ; then
    bios_boot_size=0
else
    # For GRUB 2 we need separate parition to store stage2 grub image
    # 2Mb value is chosen to align partition for best performance.
    bios_boot_size=2
fi

boot_size=$(du -ms /boot/ | awk '{print $1}')
# add 10M to provide some extra space for users and account
# for rounding in the above subtractions
boot_size=$(( boot_size + 20 ))


swap_ratio=5
swap_size=$((disk_size*swap_ratio/100))
rootfs_size=$((disk_size-bios_boot_size-boot_size-swap_size))

boot_start=$((bios_boot_size))
rootfs_start=$((bios_boot_size+boot_size))
rootfs_end=$((rootfs_start+rootfs_size))
swap_start=$((rootfs_end))


part_prefix="p"
if [ $grub_version -eq 0 ] ; then
    bios_boot=''
    bootfs=${device}${part_prefix}1
    rootfs=${device}${part_prefix}2
    swap=${device}${part_prefix}3
else
    bios_boot=${device}${part_prefix}1
    bootfs=${device}${part_prefix}2
    rootfs=${device}${part_prefix}3
    swap=${device}${part_prefix}4
fi

echo "*****************"
[ $grub_version -ne 0 ] && echo "BIOS boot partition size: $bios_boot_size MB ($bios_boot)"
echo "Boot partition size:   $boot_size MB ($bootfs)"
echo "Rootfs partition size: $rootfs_size MB ($rootfs)"
echo "Swap partition size:   $swap_size MB ($swap)"
echo "*****************"
echo "Deleting partition table on ${device} ..."
dd if=/dev/zero of=${device} bs=512 count=35

echo "Creating new partition table on ${device} ..."
if [ $grub_version -eq 0 ] ; then
    parted ${device} mktable msdos
    echo "Creating boot partition on $bootfs"
    parted ${device} mkpart primary ext3 0% $boot_size
else
    parted ${device} mktable gpt
    echo "Creating BIOS boot partition on $bios_boot"
    parted ${device} mkpart bios_boot 0% $bios_boot_size
    parted ${device} set 1 bios_grub on
    echo "Creating boot partition on $bootfs"
    parted ${device} mkpart boot ext3 $boot_start $boot_size
fi

echo "Creating rootfs partition on $rootfs"
[ $grub_version -eq 0 ] && pname='primary' || pname='root'
parted ${device} mkpart $pname ext4 $rootfs_start $rootfs_end

echo "Creating swap partition on $swap"
[ $grub_version -eq 0 ] && pname='primary' || pname='swap'
parted ${device} mkpart $pname linux-swap $swap_start 100%

parted ${device} print

echo "Waiting for device nodes..."
C=0
while [ $C -ne 3 ] && [ ! -e $bootfs  -o ! -e $rootfs -o ! -e $swap ]; do
    C=$(( C + 1 ))
    sleep 1
done

echo "Formatting $bootfs to ext3..."
mkfs.ext3 $bootfs

echo "Formatting $rootfs to ext4..."
mkfs.ext4 $rootfs

echo "Formatting swap partition...($swap)"
mkswap $swap


echo "Copying rootfs files..."
mkdir ./tgt_root
mkdir -p ./boot

mount $rootfs ./tgt_root 

tar xf $2 -C ./tgt_root 
if [ -d ./tgt_root/etc/ ] ; then
    if [ $grub_version -ne 0 ] ; then
        boot_uuid=$(blkid -o value -s UUID ${bootfs})
        swap_part_uuid=$(blkid -o value -s PARTUUID ${swap})
        bootdev="UUID=$boot_uuid"
        swapdev=/dev/disk/by-partuuid/$swap_part_uuid
    else
        bootdev=${bootfs}
        swapdev=${swap}
    fi
    echo "$swapdev                swap             swap       defaults	0  0" >> ./tgt_root/etc/fstab
    echo "$bootdev              /boot            ext3       defaults	1  2" >> ./tgt_root/etc/fstab
    # We dont want udev to mount our root device while we're booting...
    if [ -d ./tgt_root/etc/udev/ ] ; then
        echo "${device}" >> ./tgt_root/etc/udev/mount.blacklist
    fi
fi

umount $rootfs


mount $bootfs ./boot
echo "Preparing boot partition..."

if [ -f /etc/grub.d/00_header -a $grub_version -ne 0 ] ; then
    echo "Preparing custom grub2 menu..."
    root_part_uuid=$(blkid -o value -s PARTUUID ${rootfs})
    boot_uuid=$(blkid -o value -s UUID ${bootfs})
    GRUBCFG="./boot/grub/grub.cfg"
    mkdir -p $(dirname $GRUBCFG)
    cat >$GRUBCFG <<_EOF
timeout=5
default=0
menuentry "Linux" {
    search --no-floppy --fs-uuid $boot_uuid --set root
    linux /kernel root=PARTUUID=$root_part_uuid $rootwait rw $5 $3 $4 quiet
}
_EOF
    chmod 0444 $GRUBCFG
fi
grub-install --boot-directory=./boot ${device}

if [ $grub_version -eq 0 ] ; then
    echo "(hd0) ${device}" > ./boot/grub/device.map
    echo "Preparing custom grub menu..."
    echo "default 0" > ./boot/grub/menu.lst
    echo "timeout 30" >> ./boot/grub/menu.lst
    echo "title Live Boot/Install-Image" >> ./boot/grub/menu.lst
    echo "root  (hd0,0)" >> ./boot/grub/menu.lst
    echo "kernel /kernel root=$rootfs rw $3 $4 quiet" >> ./boot/grub/menu.lst
fi

cp $1 ./boot/kernel 

umount ./boot
rm ./tgt_root ./boot -rf
losetup -d ${device}
qemu-img convert -f raw -O qcow2 rootfs.raw image.qcow2
