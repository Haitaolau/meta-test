FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

EXTRA_OECONF += " --enable-tests"

inherit ptest

SRC_URI += "file://run-ptest \
			"

#do_compile_ptest() {
#    oe_runmake -i check
#}

ALLOW_EMPTY_${PN} = "1"

do_install_ptest(){

	cp ${S}/test-driver ${D}${PTEST_PATH}/
	install -d ${D}${PTEST_PATH}/avahi-core
	install -D ${B}/avahi-core/.libs/*test  ${D}${PTEST_PATH}/avahi-core
	install -D ${B}/avahi-core/Makefile ${D}${PTEST_PATH}/avahi-core

	sed -i 's/Makefile: .*/Makefile: /' ${D}${PTEST_PATH}/avahi-core/Makefile
	sed -i 's/srcdir =.*/srcdir = ./' ${D}${PTEST_PATH}/avahi-core/Makefile
	sed -i 's/dns-spin-test.log: .*/dns-spin-test.log:/' ${D}${PTEST_PATH}/avahi-core/Makefile
	sed -i 's/dns-test.log: .*/dns-test.log:/' ${D}${PTEST_PATH}/avahi-core/Makefile
	sed -i 's/hashmap-test.log: .*/hashmap-test.log:/' ${D}${PTEST_PATH}/avahi-core/Makefile

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
