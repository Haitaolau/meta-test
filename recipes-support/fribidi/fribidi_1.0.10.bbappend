FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		install ${B}/test/unicode-conformance/BidiCharacterTest ${D}${PTEST_PATH}/tests/
		install ${B}/test/unicode-conformance/BidiTest ${D}${PTEST_PATH}/tests/
		install -D ${S}/test/*.input ${D}${PTEST_PATH}/tests/
		install -D ${S}/test/*.reference ${D}${PTEST_PATH}/tests/
        install ${S}/test/unicode-conformance/BidiCharacterTest.txt ${D}${PTEST_PATH}/tests/
		install ${S}/test/unicode-conformance/BidiTest.txt ${D}${PTEST_PATH}/tests/

}

RDEPENDS_${PN}-ptest += "bash"

