FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://Makefile \
            "

inherit ptest

do_compile_ptest() {
	make -i check
}

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
        install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
        for i in bsdcat_test bsdtar_test libarchive_test bsdcpio_test; \
           do install ${B}/$i ${D}${PTEST_PATH}/tests/ ; \
        done
        install ${S}/build/autoconf/test-driver ${D}${PTEST_PATH}/tests/

        mkdir -p ${D}${PTEST_PATH}/tests/libarchive/test
        cp -rf ${S}/libarchive/test/*.uu ${D}${PTEST_PATH}/tests/libarchive/test/

        mkdir -p ${D}${PTEST_PATH}/tests/tar/test
        cp -rf ${S}/tar/test/*.uu ${D}${PTEST_PATH}/tests/tar/test/

        mkdir -p ${D}${PTEST_PATH}/tests/cat/test
        cp -rf ${S}/cat/test/*.uu ${D}${PTEST_PATH}/tests/cat/test/
							 
        mkdir -p ${D}${PTEST_PATH}/tests/cpio/test
        cp -rf ${S}/cpio/test/*.uu ${D}${PTEST_PATH}/tests/cpio/test/
}


RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
