FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://GUNMakefile \
            file://Makefile \
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


      install -d ${D}${PTEST_PATH}/tests/
	  cp ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/Makefile
	  install ${S}/tests/init.sh ${D}${PTEST_PATH}/tests/
	  cp ${S}/tests/find ${D}${PTEST_PATH}/tests/ -rf
	  cp ${S}/tests/misc ${D}${PTEST_PATH}/tests/ -rf
	  cp ${S}/tests/xargs ${D}${PTEST_PATH}/tests/ -rf


}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
