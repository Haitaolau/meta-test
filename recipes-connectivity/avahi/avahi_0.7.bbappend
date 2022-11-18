FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
			file://Makefile \
            "

inherit ptest



RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"

do_compile_ptest() {
	cp ${S}/test-driver ${B}/
	make -i check
}

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
		install ${S}/test-driver ${D}${PTEST_PATH}/tests/
		install ${B}/avahi-core/dns-spin-test ${D}${PTEST_PATH}/tests/ 
		install ${B}/avahi-core/dns-test ${D}${PTEST_PATH}/tests/ 
		install ${B}/avahi-core/hashmap-test ${D}${PTEST_PATH}/tests/
		cp  ${B}/avahi-core/.libs ${D}${PTEST_PATH}/tests/ -rf
}

EXTRA_OECONF += "  --enable-tests "
