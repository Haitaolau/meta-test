FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_compile_ptest() {
	make -i check
}

do_install_ptest(){
      install -d ${D}${PTEST_PATH}/tests/
	  install ${B}/tests/genfile ${D}${PTEST_PATH}/tests/
	  install -D ${S}/tests/*.at ${D}${PTEST_PATH}/tests/
	  install ${S}/tests/testsuite ${D}${PTEST_PATH}/tests/
}

RDEPENDS_${PN}-ptest += "bash"
