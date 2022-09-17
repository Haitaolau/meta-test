DESCRIPTION = "Gives a fake root environment which can support chroot"
SECTION = "base"

LICENSE = "LGPLv2.1+"
LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"

SRC_URI = "https://github.com/dex4er/fakechroot/releases/download/2.20.1/fakechroot-${PV}.tar.gz \
           file://0001-tmpnam.c-fix-heap-overflow.patch \
           file://0002-declare-missing-bufs-remove-ver-from-lstat.patch \
           file://0003-fix-glibc-2.33-compatibility.patch \
           file://0004-wrap-fstatat-and-fstatat64.patch \
          "

SRC_URI[md5sum] = "bf67c9b3a5f282f310ba8beda2fc6057"
SRC_URI[sha256sum] = "5abd04323c9ddae06b5dcaa56b2da07728de3fe21007b08bd88a17b2409b32aa"

inherit autotools

RDEPENDS_${PN} += "bash perl"
PR = "r0"
