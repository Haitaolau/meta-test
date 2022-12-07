FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
            "

inherit ptest

#do_compile_ptest() {
#    cd tests
#    oe_runmake test
#}

do_install_ptest(){
	install -d ${D}${PTEST_PATH}/tests/

	grep "add_test(" ${B}/src/test/CTestTestfile.cmake  | sed 's/^.*\:add_test(/add_test(/' > ${D}${PTEST_PATH}/tests/CTestTestfile.cmake
	for i in $(awk '/subdirs/{gsub("subdirs\\(\"","",$1);gsub("\"\\)","",$1);print $1}' ${B}/src/test/CTestTestfile.cmake) ;\
	do find ${B}/src/test/$i -name "CTestTestfile.cmake" | xargs grep "add_test(" | sed 's/^.*\:add_test(/add_test(/' >> ${D}${PTEST_PATH}/tests/CTestTestfile.cmake ;\
	done

	sed -i -e 's# "/.*build/bin# "bin#' \
           -e 's# "/.*src/test/crush/# "#' \
           -e 's# "/.*src/test/encoding/# "#' \
           -e 's# "/.*src/test/osd/# "#' \
           -e 's# "/.*src/test/pybind/# "#' \
           -e 's# "/.*src/test/rgw/# "#' \
           -e 's# "/.*src/test/# "#' ${D}${PTEST_PATH}/tests/CTestTestfile.cmake
	install -d ${D}${PTEST_PATH}/tests/bin/
	install -d ${D}${PTEST_PATH}/tests/lib/
    for i in $(awk '{gsub("add_test\\(","",$1);print $1}' ${D}${PTEST_PATH}/tests/CTestTestfile.cmake); \ 
	do test -f ${B}/bin/$i && install ${B}/bin/$i ${D}${PTEST_PATH}/tests/bin/ ; \
	done

	install ${S}/src/test/crush/crush_weights.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/encoding/check-generated.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/encoding/readable.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/osd/safe-to-destroy.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/rgw/test-ceph-diff-sorted.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/rgw/test-rgw-common.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/run-rbd-unit-tests.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/smoke.sh ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/pybind/test_ceph_daemon.py  ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/pybind/test_ceph_argparse.py  ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/detect-build-env-vars.sh  ${D}${PTEST_PATH}/tests/
	install ${S}/src/test/run-cli-tests-maybe-unset-ccache  ${D}${PTEST_PATH}/tests/
    #echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:${libdir}:${libdir}/${BPN}" >> ${D}${PTEST_PATH}/tests/detect-build-env-vars.sh
    sed -i 's/export CEPH_ROOT=.*/export CEPH_ROOT=\./' ${D}${PTEST_PATH}/tests/detect-build-env-vars.sh
    sed -i 's/export CEPH_BUILD_DIR=.*/export CEPH_BUILD_DIR=\./' ${D}${PTEST_PATH}/tests/detect-build-env-vars.sh
    sed -i "s#export LD_LIBRARY_PATH=.*#export LD_LIBRARY_PATH=\$CEPH_LIB:${libdir}:${libdir}/${BPN}#" ${D}${PTEST_PATH}/tests/detect-build-env-vars.sh 
	
	install ${S}/src/test/run-cli-tests  ${D}${PTEST_PATH}/tests/
	cp ${S}/src/test/cli/. ${D}${PTEST_PATH}/tests/ -rf
	install ${B}/CMakeCache.txt ${D}${PTEST_PATH}/tests/
	install ${B}/bin/unittest_librbd ${D}${PTEST_PATH}/tests/bin/
	install ${B}/bin/get_command_descriptions ${D}${PTEST_PATH}/tests/bin/
    install -D ${B}/lib/libcls*.so ${D}${PTEST_PATH}/tests/lib/

	install -d ${D}${libdir}/${BPN}/erasure-code
    for i in libec_example.so libec_fail_to_initialize.so libec_fail_to_register.so \ 
			libec_hangs.so libec_missing_entry_point.so libec_missing_version.so ;\
	do install ${B}/lib/$i ${D}${libdir}/${BPN}/erasure-code ; \
    done
	
    

}


RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "python3-pip"
RDEPENDS_${PN}-ptest += "python3-nose"
