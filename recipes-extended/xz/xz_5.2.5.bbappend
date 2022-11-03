FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
			file://Makefile \
            "

inherit ptest

do_compile_ptest() {
    cd tests
    oe_runmake -i check
}

do_install_ptest(){
      install -d ${D}${PTEST_PATH}/tests/
      for i in create_compress_files test_bcj_exact_size test_block_header test_check test_filter_flags test_index  test_stream_flags ;\
	  do install ${B}/tests/${i} ${D}${PTEST_PATH}/tests/ ;\
	  done
	  install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
	  cp ${B}/tests/.libs/ ${D}${PTEST_PATH}/tests/ -rf
	  install ${S}/tests/test_compress.sh ${D}${PTEST_PATH}/tests/
	  install ${S}/tests/test_files.sh ${D}${PTEST_PATH}/tests/
	  install ${S}/tests/test_scripts.sh ${D}${PTEST_PATH}/tests/
	  install ${S}/tests/xzgrep_expected_output ${D}${PTEST_PATH}/tests/
      if [ "${TARGET_ARCH}" = "sparc64" ]; then
         install -m 0644 ${S}/tests/compress_prepared_bcj_sparc ${D}${PTEST_PATH}/tests/
	  fi
	  if [ "${TARGET_ARCH}" = "x86_64" ]; then
	     install -m 0644 ${S}/tests/compress_prepared_bcj_x86 ${D}${PTEST_PATH}/tests/
	  fi
	  cp ${S}/tests/files ${D}${PTEST_PATH}/tests/ -rf
	  sed -i 's/relink_command=.*/relink_command=""/' ${D}${PTEST_PATH}/tests/test*
	  sed -i -e 's#../src/xz/#/usr/bin/#' -e 's#../src/xzdec/#/usr/bin/#' ${D}${PTEST_PATH}/tests/test_files.sh
	  sed -i -e 's#../src/xz/#/usr/bin/#' -e 's#../src/scripts/#/usr/bin/#' ${D}${PTEST_PATH}/tests/test_scripts.sh
	  sed -i -e 's#../src/xz/#/usr/bin/#' -e 's#../src/xzdec/#/usr/bin/#' ${D}${PTEST_PATH}/tests/test_compress.sh
}

#Architecture did not match (x86, expected x86-64)
INSANE_SKIP_${PN}-ptest += "arch"

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
