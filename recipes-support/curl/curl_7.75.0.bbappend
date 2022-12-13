FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest 

do_compile_ptest() {
    cd tests 
    oe_runmake -i test
}

do_install_ptest(){
	install -d ${D}${PTEST_PATH}/tests/
	cp ${B}/tests/* ${D}${PTEST_PATH}/tests/ -rf
	cp ${S}/tests/certs/* ${D}${PTEST_PATH}/tests/certs/ -rf
	cp ${B}/tests/libtest/.libs/* ${D}${PTEST_PATH}/tests/libtest/ -rf 
	find ${D}${PTEST_PATH}/tests/ -name "*.o" | xargs rm -rf
	install -D ${S}/tests/libtest/*.pl ${D}${PTEST_PATH}/tests/libtest/
	install -D ${S}/tests/*.pl ${D}${PTEST_PATH}/tests/
	install -D ${S}/tests/*.py ${D}${PTEST_PATH}/tests/
	install -D ${S}/tests/*.pm ${D}${PTEST_PATH}/tests/
	install ${S}/tests/stunnel.pem ${D}${PTEST_PATH}/tests/
	install ${S}/tests/valgrind.supp ${D}${PTEST_PATH}/tests/
	install ${B}/curl-config ${D}${PTEST_PATH}/tests/
	install -D ${S}/tests/data/test* ${D}${PTEST_PATH}/tests/data/
	sed -i 's/\.\.\/curl-config/\.\/curl-config/' ${D}${PTEST_PATH}/tests/data/*
	sed -i 's/$disttests !~ \/test\$testnum\\W\// not -e "data\/test\$testnum"/' ${D}${PTEST_PATH}/tests/runtests.pl
	sed -i '/get_disttests();/s/^/#/' ${D}${PTEST_PATH}/tests/runtests.pl
	sed -i 's/.\(.\/curl-config\)/\1/' ${D}${PTEST_PATH}/tests/runtests.pl
	sed -i 's/..\/src\/curl/curl/' ${D}${PTEST_PATH}/tests/runtests.pl
	sed -i 's/ %SRCDIR\/\.\./ \/usr\//' ${D}${PTEST_PATH}/tests/data/test1135 

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "perl"
RDEPENDS_${PN}-ptest += "python3"
RDEPENDS_${PN}-ptest += "python3-impacket"
RDEPENDS_${PN}-ptest += "stunnel"
RDEPENDS_${PN}-ptest += "nghttp2"


