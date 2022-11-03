FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://Makefile \
            "

inherit ptest

do_compile_ptest() {
	cp ${S}/build-aux ${B}/ -rf
    oe_runmake -i check
}

do_install_ptest(){
      install -d ${D}${PTEST_PATH}/test/
	  install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/
	  find ${B}/test/  -type f -executable -print -maxdepth 1 | xargs -i cp {} ${D}${PTEST_PATH}/test/ -rf
	  cp ${B}/test/.libs/ ${D}${PTEST_PATH}/test/ -rf
	  install ${S}/build-aux/test-driver ${D}${PTEST_PATH}/


}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
RDEPENDS_${PN}-ptest += "perl"

