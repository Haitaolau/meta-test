FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://GUNMakefile \
            "

inherit ptest

do_compile_ptest() {
    cp ${S}/build-aux/test-driver ${B}/build-aux/test-driver
    oe_runmake -i check
}

do_install_ptest(){
      install -d ${D}${PTEST_PATH}/gnulib-tests/
	  install -d ${D}${PTEST_PATH}/gnulib-tests/uniwidth 
      find ${B}/gnulib-tests/  -type f -executable -print -maxdepth 1 | xargs -i cp {} ${D}${PTEST_PATH}/gnulib-tests/ -rf
	  install -D ${S}/gnulib-tests/*.sh ${D}${PTEST_PATH}/gnulib-tests/
	  install -D ${S}/gnulib-tests/uniwidth/*.sh ${D}${PTEST_PATH}/gnulib-tests/uniwidth/
	  cp ${WORKDIR}/GUNMakefile ${D}${PTEST_PATH}/gnulib-tests/Makefile
	  install ${S}/build-aux/test-driver ${D}${PTEST_PATH}/gnulib-tests/
	  install ${S}/build-aux/update-copyright ${D}${PTEST_PATH}/gnulib-tests/
	  install ${S}/build-aux/vc-list-files ${D}${PTEST_PATH}/gnulib-tests/

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
