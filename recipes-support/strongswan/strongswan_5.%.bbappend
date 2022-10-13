FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest 

do_compile_ptest() {
    oe_runmake -i check
}

do_install_ptest(){
	
	install -d ${D}${PTEST_PATH}/libstrongswan/
	cp ${B}/src/libstrongswan/tests/. ${D}${PTEST_PATH}/libstrongswan/ -rf

	install -d ${D}${PTEST_PATH}/libcharon/
	cp ${B}/src/libcharon/tests/. ${D}${PTEST_PATH}/libcharon/ -rf

}

RDEPENDS_${PN}-ptest += "gcc"
RDEPENDS_${PN}-ptest += "bash"
