FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://Makefile \
            "

inherit ptest

do_compile_ptest() {
    cp ${S}/build-aux/test-driver ${B}/build-aux/test-driver
    oe_runmake -i check
}

do_install_ptest(){
      install -d ${D}${PTEST_PATH}/tests/
	  install -d ${D}${PTEST_PATH}/tests/uniwidth 
      find ${B}/gnulib-tests/  -type f -executable -print -maxdepth 1 | xargs -i cp {} ${D}${PTEST_PATH}/tests/ -rf
	  install -D ${S}/gnulib-tests/*.sh ${D}${PTEST_PATH}/tests/ 
	  install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
	  install ${S}/build-aux/test-driver ${D}${PTEST_PATH}/tests/
	  install ${S}/build-aux/update-copyright ${D}${PTEST_PATH}/tests/
	  install ${S}/build-aux/vc-list-files ${D}${PTEST_PATH}/tests/

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
