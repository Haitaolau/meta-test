FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://0001-ptest-modify-the-IMGDIR-and-EXEDIR-variable.patch \
            "

inherit ptest



do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
        install -d ${D}${PTEST_PATH}/tests/log/
	install ${B}/tjexample ${D}${bindir}/tjexample
        install ${B}/croptest ${D}${PTEST_PATH}/tests/
        install ${B}/tjbenchtest ${D}${PTEST_PATH}/tests/
        install ${B}/tjexampletest ${D}${PTEST_PATH}/tests/
        install ${B}/tjunittest ${D}${PTEST_PATH}/tests/
        install ${B}/tjunittest-static ${D}${PTEST_PATH}/tests/
        install ${B}/jcstest ${D}${PTEST_PATH}/tests/
        cp ${S}/testimages ${D}${PTEST_PATH}/tests/ -rf
}

RDEPENDS_${PN} += "bash"
RDEPENDS_${PN}-ptest += " bash"
