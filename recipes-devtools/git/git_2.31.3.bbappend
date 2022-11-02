FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

#do_compile_ptest() {
#}

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
		cp -rf ${S}/contrib ${D}${PTEST_PATH}/tests/ 
		cp -rf ${S}/t ${D}${PTEST_PATH}/tests/ 
		cp -rf ${S}/po ${D}${PTEST_PATH}/tests/ 
        install ${S}/GIT-BUILD-OPTIONS ${D}${PTEST_PATH}/tests/
		sed -i "s/PERL_PATH=.*/PERL_PATH='\/usr\/bin\/perl'/" ${D}${PTEST_PATH}/tests/GIT-BUILD-OPTIONS
        #sed -i "s/PERL_PATH=.*/PERL_PATH='perl'/" ${D}${PTEST_PATH}/tests/GIT-BUILD-OPTIONS
		sed -i 's/\${GIT_TEST_INSTALLED:-\$GIT_BUILD_DIR}\///' ${D}${PTEST_PATH}/tests/t/test-lib.sh 
		sed -i 's/\${GIT_TEST_INSTALLED:-\$GIT_EXEC_PATH}\///' ${D}${PTEST_PATH}/tests/t/test-lib-functions.sh
	    install -d ${D}${PTEST_PATH}/tests/templates
		cp ${S}/templates/blt ${D}${PTEST_PATH}/tests/templates -rf
		mkdir -p ${D}${PTEST_PATH}/tests/t/helper
		for i in test-sha1.sh test-fake-ssh test-tool ; \
			do install -D ${S}/t/helper/${i} ${D}${PTEST_PATH}/tests/t/helper ;\
		done

		sed -i '/if test -z "$TEST_DIRECTORY"/i no_bin_wrappers=t' ${D}${PTEST_PATH}/tests/t/test-lib.sh
		install ${S}/git-sh-i18n ${D}${PTEST_PATH}/tests/
		install ${S}/Makefile ${D}${PTEST_PATH}/tests/
		install ${S}/COPYING ${D}${PTEST_PATH}/tests/
		install ${S}/README.md ${D}${PTEST_PATH}/tests/
        #cp ${S}/t/oid-info ${D}${PTEST_PATH}/tests/t -rf
        #install -D ${S}/t/*.sh ${D}${PTEST_PATH}/tests/t
        #install -D ${S}/t/chainlint.sed ${D}${PTEST_PATH}/tests/t
        #install -d ${D}${PTEST_PATH}/tests/t
        #install -D ${S}/t/check-non-portable-shell.pl ${D}${PTEST_PATH}/tests/t

}



RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "perl"
