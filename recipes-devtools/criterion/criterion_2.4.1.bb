DESCRIPTION = " A dead-simple, yet extensible, C and C++ unit testing framework."
HOMEPAGE = "https://github.com/Snaipe/Criterion"

LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://LICENSE;md5=ec55a90c8bcb719d8636c5aca8754b28"

SRC_URI = "https://github.com/Snaipe/Criterion/releases/download/v${PV}/criterion-${PV}.tar.xz"

SRC_URI[md5sum] = "93e91812837a68524d76339409ed2008"
SRC_URI[sha256sum] = "d0f86a8fc868e2c7b83894ad058313023176d406501a4ee8863e5357e31a80e7"

inherit meson

PR = "r0"

do_configure_prepend () {
    echo "set( CMAKE_SYSROOT \"${RECIPE_SYSROOT}\" )" >> ${WORKDIR}/toolchain.cmake
    echo "set( CMAKE_DESTDIR \"${D}\" )" >> ${WORKDIR}/toolchain.cmake
}


#do_configure() {
#	meson ${MESONOPTS} "${MESON_SOURCEPATH}" "${B}"
#}
#
#do_compile() {
#	ninja -v -C "${B}"
#}
#
#do_install() {
#	DESTDIR=${D} ninja -C "${B}" install
#    #Remove unnecessary files
#	rm ${D}/usr/lib/ -rf
#}

DEPENDS = " cmake"

RDEPENDS_criterion = " libffi glibc"
