FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://0001-t0061-run-command.sh-merge-test-run-command-into-tes.patch \
            "

inherit ptest

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
		cp -rf ${S}/t ${D}${PTEST_PATH}/tests/
		cp -rf ${S}/contrib ${D}${PTEST_PATH}/tests/ 
		cp -rf ${S}/t ${D}${PTEST_PATH}/tests/ 
		cp -rf ${S}/po ${D}${PTEST_PATH}/tests/ 
	    install -d ${D}${PTEST_PATH}/tests/templates
		cp ${S}/templates/blt ${D}${PTEST_PATH}/tests/templates -rf

        install ${S}/GIT-BUILD-OPTIONS ${D}${PTEST_PATH}/tests/
		sed -i 's/"$GIT_BUILD_DIR\/git"/"git"/' ${D}${PTEST_PATH}/tests/t/test-lib.sh 
		sed -i 's/$GIT_TEST_INSTALLED\/git/git/' ${D}${PTEST_PATH}/tests/t/test-lib.sh
		sed -i "s/PERL_PATH=.*/PERL_PATH='\/usr\/bin\/perl'/" ${D}${PTEST_PATH}/tests/GIT-BUILD-OPTIONS
        install ${S}/git-sh-i18n ${D}${PTEST_PATH}/tests/
		install ${S}/Makefile ${D}${PTEST_PATH}/tests/
		install ${S}/COPYING ${D}${PTEST_PATH}/tests/
		install ${S}/README.md ${D}${PTEST_PATH}/tests/

	    install -d ${D}${PTEST_PATH}/tests/templates
		cp ${S}/templates/blt ${D}${PTEST_PATH}/tests/templates -rf
		mkdir -p ${D}${PTEST_PATH}/tests/t/helper
		for i in test-sha1.sh test-fake-ssh test-tool ; \
			do install -D ${S}/t/helper/${i} ${D}${PTEST_PATH}/tests/t/helper ;\
		done

		install ${S}/git-sh-i18n ${D}${PTEST_PATH}/tests/
		install ${S}/Makefile ${D}${PTEST_PATH}/tests/
		install ${S}/COPYING ${D}${PTEST_PATH}/tests/
		install ${S}/README.md ${D}${PTEST_PATH}/tests/

}



RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "perl"
RDEPENDS_${PN}-ptest += "python"
RDEPENDS_${PN}-ptest += "glibc-gconv-sjis glibc-gconv-iso-2022-jp"
