
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            file://0001-rpm-empty-RPMTEST_SETUP-define.patch \
            "

inherit ptest 

do_compile_ptest() {
    cd tests 
    make atconfig atlocal ../../git/tests/rpmtests
}

do_install_ptest() {
        install -d ${D}${PTEST_PATH}/tests/
        install -d ${D}${PTEST_PATH}/tests/data
        cp -rf ${S}/tests/data/* ${D}${PTEST_PATH}/tests/data/
        install ${S}/tests/rpmtests ${D}${PTEST_PATH}/tests/
        echo "RPMDATA='/data';export RPMDATA" >> ${D}${PTEST_PATH}/tests/atlocal
        echo "PYTHON_DISABLED=false;export PYTHON_DISABLED" >> ${D}${PTEST_PATH}/tests/atlocal 
        echo "PYTHON='python3';export PYTHON" >> ${D}${PTEST_PATH}/tests/atlocal
        echo "RPM_CONFIGDIR='/usr/lib64/rpm';export RPM_CONFIGDIR" >> ${D}${PTEST_PATH}/tests/atlocal
        echo -e "DBFORMAT=\$(awk '/^%_db_backend/{print $2}' '/usr/lib64/rpm/macros');export DBFORMAT" >> ${D}${PTEST_PATH}/tests/atlocal
        #install ${B}/tests/atconfig ${D}${PTEST_PATH}/tests/
        #install ${B}/tests/atlocal ${D}${PTEST_PATH}/tests/
        sed -i 's/runroot//g' ${D}${PTEST_PATH}/tests/rpmtests
        sed -i 's/_other//g' ${D}${PTEST_PATH}/tests/rpmtests
        sed -i 's/run //g' ${D}${PTEST_PATH}/tests/rpmtests
}

RDEPENDS_${PN}-ptest += "${PN}-build"
RDEPENDS_${PN}-ptest += "${PN}-sign"
RDEPENDS_${PN}-ptest += "${PN}-archive"
 
