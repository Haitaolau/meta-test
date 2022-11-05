FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
			file://Makefile \
            "

inherit ptest


do_install_ptest(){
     install -d ${D}${PTEST_PATH}/tests/
     install -D ${S}/test-driver ${D}${PTEST_PATH}/tests/
     find ${B}/test/  -type f -executable -print -maxdepth 1 | xargs -i cp {} ${D}${PTEST_PATH}/test/ -rf

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
