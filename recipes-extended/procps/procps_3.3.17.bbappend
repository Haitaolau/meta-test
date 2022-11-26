FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest


do_install_ptest(){

    install -d ${D}${PTEST_PATH}/testsuite/
	install -D ${B}/.libs/* ${D}${PTEST_PATH}/
	install ${B}/pwdx ${D}${PTEST_PATH}/
    install -d ${D}${PTEST_PATH}/ps/
	install ${B}/ps/.libs/pscommand ${D}${PTEST_PATH}/ps/
	install -d ${D}${PTEST_PATH}/lib/
	for i in test_fileutils test_nsutils test_process test_strutils ;\
	do install ${B}/lib/$i ${D}${PTEST_PATH}/lib/ ;\
	done
    install -D ${B}/testsuite/Makefile ${D}${PTEST_PATH}/testsuite/
	install -D ${B}/testsuite/test-schedbatch  ${D}${PTEST_PATH}/testsuite/
	sed -i 's/Makefile: .*/Makefile: /' ${D}${PTEST_PATH}/testsuite/Makefile
	sed -i 's/srcdir =.*/srcdir = ./' ${D}${PTEST_PATH}/testsuite/Makefile
	cp -rf ${S}/testsuite/* ${D}${PTEST_PATH}/testsuite/
	test -f ${D}${PTEST_PATH}/testsuite/Makefile.am && rm ${D}${PTEST_PATH}/testsuite/Makefile.am 
	test -f ${D}${PTEST_PATH}/testsuite/Makefile.in && rm ${D}${PTEST_PATH}/testsuite/Makefile.in 
	test -f ${D}${PTEST_PATH}/testsuite/README && rm ${D}${PTEST_PATH}/testsuite/README
    
}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
RDEPENDS_${PN}-ptest += "dejagnu"
RDEPENDS_${PN}-ptest += "expect"

