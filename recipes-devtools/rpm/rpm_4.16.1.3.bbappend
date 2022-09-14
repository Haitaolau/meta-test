
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
			"

inherit ptest 

do_compile_ptest() {
    cd tests 
	make atconfig atlocal ../../git/tests/rpmtests
}

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
        install -d ${D}${PTEST_PATH}/tests/data
		cp -rf ${S}/tests/data/* ${D}${PTEST_PATH}/tests/data/
		install ${S}/tests/rpmtests ${D}${PTEST_PATH}/tests/
		sed -i 's/runroot_other//g' ${D}${PTEST_PATH}/tests/rpmtests
		sed -i 's/_other//g' ${D}${PTEST_PATH}/tests/rpmtests
}
 
