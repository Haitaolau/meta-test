FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_compile_ptest() {
	scons -i check
}

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/test/
		install ${S}/test/serf_bwtp ${D}${PTEST_PATH}/test/
		install ${S}/test/serf_get ${D}${PTEST_PATH}/test/
		install ${S}/test/serf_request ${D}${PTEST_PATH}/test/ 
		install ${S}/test/serf_response ${D}${PTEST_PATH}/test/
		install ${S}/test/serf_spider ${D}${PTEST_PATH}/test/
		install ${S}/test/test_all ${D}${PTEST_PATH}/test/
		cp ${S}/test/server ${D}${PTEST_PATH}/test/ -rf
		cp ${S}/test/testcases ${D}${PTEST_PATH}/test/ -rf
}

RDEPENDS_${PN}-ptest += "python3"
