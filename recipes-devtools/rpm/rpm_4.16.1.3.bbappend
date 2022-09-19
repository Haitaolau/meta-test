
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest 

do_compile_ptest() {
    cd tests 
    make atconfig atlocal ../../git/tests/rpmtests
}

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
        install -d ${D}${PTEST_PATH}/tests/data
        install ${S}/tests/rpmtests ${D}${PTEST_PATH}/tests/
        #install ${B}/tests/atconfig ${D}${PTEST_PATH}/tests/
        install ${B}/tests/atlocal ${D}${PTEST_PATH}/tests/
        install ${B}/config.h ${D}${PTEST_PATH}/tests/
        cp -rf ${S}/tests/data/* ${D}${PTEST_PATH}/tests/data/
        sed -i 's/abs_top_builddir/abs_builddir/g' ${D}${PTEST_PATH}/tests/atlocal
        sed -i 's/abs_srcdir/abs_builddir/g' ${D}${PTEST_PATH}/tests/atlocal
        echo "at_testdir='tests'" >> ${D}${PTEST_PATH}/tests/atconfig
        echo "abs_builddir=`pwd`" >> ${D}${PTEST_PATH}/tests/atconfig
        echo "abs_srcdir=`pwd`" >> ${D}${PTEST_PATH}/tests/atconfig

}

RDEPENDS_${PN}-ptest += "${PN}-build"
RDEPENDS_${PN}-ptest += "${PN}-sign"
RDEPENDS_${PN}-ptest += "${PN}-archive"
RDEPENDS_${PN}-ptest += "gcc"
RDEPENDS_${PN}-ptest += "fakechroot"
RDEPENDS_${PN}-ptest += "binutils"
 
