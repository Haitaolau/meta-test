FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_compile_ptest() {
	make -i check
}

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
		install -D ${S}/runtests.sh ${D}${PTEST_PATH}/tests/
		sed -i 's#rsync_bin="$TOOLDIR/rsync"#rsync_bin="/usr/bin/rsync"#' ${D}${PTEST_PATH}/tests/runtests.sh
		install -D ${S}/testrun ${D}${PTEST_PATH}/tests/
		install -D ${S}/*.c ${D}${PTEST_PATH}/tests/
		install -D ${S}/*.h ${D}${PTEST_PATH}/tests/
		for i in getgroups getfsdev trimslash t_unsafe wildtest tls shconfig config.sub configure.ac ;\
		do install -D ${S}/$i ${D}${PTEST_PATH}/tests/ ;\
		done
		cp -rf ${S}/testsuite ${D}${PTEST_PATH}/tests/

}

RDEPENDS_${PN}-ptest += "bash"
