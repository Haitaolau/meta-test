FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://run-ptest \
            file://0001-tests-add-CLAR_FIXTURES_DIR-for-ptest.patch \
            "

inherit ptest


EXTRA_OECMAKE_PTEST = " -DBUILD_CLAR=ON -DVALGRIND=ON -DCLAR_FIXTURES_DIR=${PTEST_PATH}/tests "

EXTRA_OECMAKE += "${@bb.utils.contains('DISTRO_FEATURES', 'ptest', '${EXTRA_OECMAKE_PTEST}', '', d)} "


do_install_ptest(){
	install -d ${D}${PTEST_PATH}/tests/
	install ${B}/libgit2_clar ${D}${PTEST_PATH}/tests/
	cp ${S}/tests/resources/ ${D}${PTEST_PATH}/tests/ -rf
}
