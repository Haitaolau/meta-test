FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://run-ptest \
			file://Makefile \
            "

inherit ptest

do_compile_ptest() {
    cd tests
	echo "check-cm: all-am\n\t\$(MAKE) \$(AM_MAKEFLAGS) \$(check_PROGRAMS) \$(dist_check_SCRIPTS)" >> Makefile
	make check-cm
}

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		cp ${B}/tests/. ${D}${PTEST_PATH}/tests/ -rf
		find ${D}${PTEST_PATH}/tests/ -name "*.o" | xargs rm -rf 
		install -D ${S}/tests/*.sh ${D}${PTEST_PATH}/tests/
		install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
		install ${S}/build-aux/test-driver ${D}${PTEST_PATH}/tests/
		install ${S}/tests/psk.passwd ${D}${PTEST_PATH}/tests/
		install ${S}/tests/system.prio ${D}${PTEST_PATH}/tests/
		cp ${S}/tests/cert-tests/. ${D}${PTEST_PATH}/tests/cert-tests/ -rf
		cp ${S}/tests/data ${D}${PTEST_PATH}/tests/ -rf
		cp ${S}/tests/x509cert-dir  ${D}${PTEST_PATH}/tests/ -rf
		cp ${S}/tests/certs ${D}${PTEST_PATH}/tests/ -rf
}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
