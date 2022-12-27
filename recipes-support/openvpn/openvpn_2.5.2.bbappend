FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://run-ptest \
            "

inherit ptest


do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
        install -D ${S}/tests/*.sh ${D}${PTEST_PATH}/tests/
        install ${B}/tests/Makefile ${D}${PTEST_PATH}/tests/
        install ${S}/tests/t_client.rc-sample ${D}${PTEST_PATH}/tests/
        install -d ${D}${PTEST_PATH}/sample/
        cp ${S}/sample/sample-keys/  ${D}${PTEST_PATH}/sample/ -rf
        cp ${S}/sample/sample-config-files/  ${D}${PTEST_PATH}/sample/ -rf
        sed -i 's/Makefile: .*/Makefile:/' ${D}${PTEST_PATH}/tests/Makefile 
        sed -i 's/check-TESTS: .*/check-TESTS:/' ${D}${PTEST_PATH}/tests/Makefile
        sed -i 's/${top_builddir}\/src\/openvpn\/openvpn/openvpn/' ${D}${PTEST_PATH}/tests/*.sh
}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
RDEPENDS_${PN}-ptest += "fping"

