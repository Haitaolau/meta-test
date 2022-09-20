FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest 

do_compile_ptest() {
    cd tests 
    oe_runmake test
}

do_install_ptest(){
	install -d ${D}${PTEST_PATH}/tests/
	cp ${B}/tests/* ${D}${PTEST_PATH}/tests/ -rf
	install -D ${S}/tests/*.pl ${D}${PTEST_PATH}/tests/
	install -D ${S}/tests/*.py ${D}${PTEST_PATH}/tests/
	install -D ${S}/tests/*.pm ${D}${PTEST_PATH}/tests/
	install ${S}/tests/valgrind.supp ${D}${PTEST_PATH}/tests/
	install -D ${S}/tests/data/test* ${D}${PTEST_PATH}/tests/data/
	sed -i 's/$disttests !~ \/test\$testnum\\W\// not -e "data\/test\$testnum"/' ${D}${PTEST_PATH}/tests/runtests.pl
	sed -i '/get_disttests();/s/^/#/' ${D}${PTEST_PATH}/tests/runtests.pl
	sed -i 's/.\(.\/curl-config\)/\1/' ${D}${PTEST_PATH}/tests/runtests.pl
	sed -i 's/..\/src\/curl/curl/' ${D}${PTEST_PATH}/tests/runtests.pl

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "perl"
RDEPENDS_${PN}-ptest += "python3"
RDEPENDS_${PN}-ptest += "python3-impacket"
RDEPENDS_${PN}-ptest += "stunnel"
RDEPENDS_${PN}-ptest += "nghttp2"


