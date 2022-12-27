FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_compile_ptest() {
    oe_runmake -i  check
}

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/subversion/
        install -d ${D}${PTEST_PATH}/tools/
		cp ${B}/subversion/tests ${D}${PTEST_PATH}/subversion/ -rf
		find ${D}${PTEST_PATH}/subversion/tests -name "*.o" | xargs rm -rf 
		find ${D}${PTEST_PATH}/subversion/tests -name "*.lo" | xargs rm -rf
		install ${B}/Makefile ${D}${PTEST_PATH}/
		sed -i 's/^check:.*/check:/' ${D}${PTEST_PATH}/Makefile
		sed -i 's/build\/\(run_tests.py\)/\1/' ${D}${PTEST_PATH}/Makefile
		sed -i "s|abs_srcdir = .*|abs_srcdir = ${PTEST_PATH}|" ${D}${PTEST_PATH}/Makefile
		sed -i 's/top_srcdir = .*/top_srcdir = \./' ${D}${PTEST_PATH}/Makefile
		sed -i 's/abs_builddir = .*/abs_builddir = \./' ${D}${PTEST_PATH}/Makefile
		sed -i 's/^PYTHON = .*/PYTHON = python3/' ${D}${PTEST_PATH}/Makefile
		sed -i 's/^PERL = .*/PERL = perl/'  ${D}${PTEST_PATH}/Makefile
		install ${S}/build-outputs.mk ${D}${PTEST_PATH}/
		install ${S}/build/run_tests.py ${D}${PTEST_PATH}/
		install ${S}/subversion/tests/tests.conf ${D}${PTEST_PATH}/subversion/tests/
		cp ${S}/subversion/tests/cmdline/. ${D}${PTEST_PATH}/subversion/tests/cmdline/ -rf
		for i in atomic-ra-revprop-change entries-dump lock-helper ; \
		do rm ${D}${PTEST_PATH}/subversion/tests/cmdline/$.c -rf ;  \
		done
		install ${S}/subversion/tests/libsvn_subr/config-test.cfg ${D}${PTEST_PATH}/subversion/tests/libsvn_subr/
		install ${S}/subversion/tests/libsvn_subr/zlib.deflated ${D}${PTEST_PATH}/subversion/tests/libsvn_subr/
		install ${S}/subversion/tests/libsvn_repos/authz.rules ${D}${PTEST_PATH}/subversion/tests/libsvn_repos/
		install ${S}/subversion/tests/libsvn_repos/authz.groups	${D}${PTEST_PATH}/subversion/tests/libsvn_repos/

		for i in afl cmdline libsvn_subr libsvn_repos libsvn_client libsvn_wc \
			libsvn_diff client libsvn_fs_fs libsvn_fs libsvn_fs_x  libsvn_ra_local libsvn_ra libsvn_delta ; \
		do  install ${D}${PTEST_PATH}/subversion/tests/$i/.libs/* ${D}${PTEST_PATH}/subversion/tests/$i/ ; \
		done

        install -d ${D}${PTEST_PATH}/tools/server-side
		install ${B}/tools/server-side/.libs/svnauthz ${D}${PTEST_PATH}/tools/server-side
		install ${B}/tools/server-side/.libs/svnauthz-validate ${D}${PTEST_PATH}/tools/server-side
		mkdir -p ${D}${PTEST_PATH}/tools/dev/svnmover/
		install ${B}/tools/dev/svnmover/.libs/svnmover ${D}${PTEST_PATH}/tools/dev/svnmover/
        install -d ${D}${PTEST_PATH}/subversion/libsvn_wc/
		install ${S}/subversion/libsvn_wc/wc.h ${D}${PTEST_PATH}/subversion/libsvn_wc/
	
}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "perl"
RDEPENDS_${PN}-ptest += "make"
RDEPENDS_${PN}-ptest += "python3"
RDEPENDS_${PN}-ptest_append_libc-glibc = " glibc-gconv-iso8859-3"
