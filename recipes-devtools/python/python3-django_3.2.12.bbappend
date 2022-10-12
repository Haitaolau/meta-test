FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
		cp -rf ${S}/tests/* ${D}${PTEST_PATH}/tests/
}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "python3-pip"
