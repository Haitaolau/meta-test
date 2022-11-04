FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
			file://Makefile \
            "

inherit ptest

do_compile_ptest() {
    cp ${S}/build-aux ${B}/ -rf
    oe_runmake -i check
}

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		install -D ${S}/tests/testit.sh ${D}${PTEST_PATH}/tests/
		install -D ${S}/build-aux/test-driver ${D}${PTEST_PATH}/tests/ 
		for i in tdict test1 test2 test-poptrc ;\
		do install -D ${B}/tests/${i} ${D}${PTEST_PATH}/tests/ ;\
		done 
		cp ${B}/tests/.libs ${D}${PTEST_PATH}/tests/ -rf
		install -D ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"

