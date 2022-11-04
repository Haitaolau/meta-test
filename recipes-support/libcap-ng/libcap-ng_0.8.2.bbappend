FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://Makefile \
            "

inherit ptest

do_compile_ptest() {
    cp ${S}/test-driver ${B}/
    oe_runmake -i check
}

do_install_ptest(){
      install -d ${D}${PTEST_PATH}/tests/
      install  ${B}/src/test/lib_test ${D}${PTEST_PATH}/tests/
      install  ${B}/src/test/thread_test ${D}${PTEST_PATH}/tests/
      install  ${S}/test-driver ${D}${PTEST_PATH}/tests/
      install  ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
      cp ${B}/src/test/.libs/ ${D}${PTEST_PATH}/tests/ -rf
}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
