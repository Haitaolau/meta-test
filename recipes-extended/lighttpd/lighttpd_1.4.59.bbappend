FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest


do_install_ptest() {
	install -d ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_array ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_base64 ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_buffer ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_burl ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_configfile ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_keyvalue ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_mod_access ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_mod_evhost ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_mod_simple_vhost ${D}${PTEST_PATH}/tests/
    install ${B}/src/t/test_mod_userdir ${D}${PTEST_PATH}/tests/
	install ${B}/src/t/test_request ${D}${PTEST_PATH}/tests/
}

RDEPENDS_${PN}-ptest += "bash"
