FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/testdir/
		cp -rf ${S}/runtime/indent/testdir/. ${D}${PTEST_PATH}/testdir/
}

RDEPENDS_${PN}-ptest += "bash"


