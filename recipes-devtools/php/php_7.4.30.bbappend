FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

do_install_ptest() {
	install -d ${D}${PTEST_PATH}/tests/
	install ${S}/run-tests.php ${D}${PTEST_PATH}/tests/

	cd ${S}
	for i in $(find . -name "*.phpt" | sed 's#^\./\(.*\)/.*phpt#\1/#' | uniq); do
		mkdir -p ${D}${PTEST_PATH}/tests/$i
		cp ${S}/$i/*.phpt ${D}${PTEST_PATH}/tests/$i
	done

}

RDEPENDS_${PN}-ptest += "bash"
