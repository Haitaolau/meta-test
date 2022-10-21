FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://start_postgres.sh \
            "

inherit ptest

do_compile_ptest() {
    cd src/test
    oe_runmake check -i
}


do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
        install -d ${D}${PTEST_PATH}/tests/isolation
		install ${B}/src/test/isolation/isolationtester ${D}${PTEST_PATH}/tests/isolation
		install ${B}/src/test/isolation/pg_isolation_regress ${D}${PTEST_PATH}/tests/isolation
		install ${B}/src/test/isolation/isolationtester ${D}${PTEST_PATH}/tests/isolation
		cp -rf ${S}/src/test/isolation/expected/ ${D}${PTEST_PATH}/tests/isolation/
		cp -rf ${S}/src/test/isolation/specs/ ${D}${PTEST_PATH}/tests/isolation/
		install ${S}/src/test/isolation/isolation_schedule ${D}${PTEST_PATH}/tests/isolation/


        install -d ${D}${PTEST_PATH}/tests/regress
        #install -d ${D}${PTEST_PATH}/tests/regress/testtablespace
		cp -rf ${S}/src/test/regress/data ${D}${PTEST_PATH}/tests/regress/
		cp -rf ${S}/src/test/regress/expected ${D}${PTEST_PATH}/tests/regress/
		cp -rf ${S}/src/test/regress/input ${D}${PTEST_PATH}/tests/regress/
		cp -rf ${S}/src/test/regress/output ${D}${PTEST_PATH}/tests/regress/
		cp -rf ${S}/src/test/regress/sql ${D}${PTEST_PATH}/tests/regress/
		install  ${B}/src/test/regress/pg_regress ${D}${PTEST_PATH}/tests/regress/
		install  ${B}/src/test/regress/autoinc.so ${D}${PTEST_PATH}/tests/regress/
		install  ${B}/src/test/regress/refint.so ${D}${PTEST_PATH}/tests/regress/
		install  ${B}/src/test/regress/regress.so ${D}${PTEST_PATH}/tests/regress/
		install  ${S}/src/test/regress/parallel_schedule ${D}${PTEST_PATH}/tests/regress/
		install  ${S}/src/test/regress/serial_schedule ${D}${PTEST_PATH}/tests/regress/
		install  ${S}/src/test/regress/standby_schedule ${D}${PTEST_PATH}/tests/regress/
}


RDEPENDS_${PN}-ptest += "bash"

