FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "
inherit ptest

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		cp ${S}/tests/* ${D}${PTEST_PATH}/tests/ -rf
}

RDEPENDS_${PN}-ptest += "bash"

