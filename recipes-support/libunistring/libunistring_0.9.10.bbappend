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
      install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
      find ${B}/tests/  -type f -executable -print -maxdepth 1 | xargs -i cp {} ${D}${PTEST_PATH}/tests/ -rf
      cp ${B}/tests/.libs/ ${D}${PTEST_PATH}/tests/ -rf
      install ${S}/build-aux/test-driver ${D}${PTEST_PATH}/tests/
	  install -D ${S}/tests/*.sh ${D}${PTEST_PATH}/tests/
      for i in unicase unigbrk uniname uninorm unistdio uniwbrk uniwidth
	  do 
	     [ ! -d "${D}${PTEST_PATH}/tests/$i" ] && mkdir -p ${D}${PTEST_PATH}/tests/$i
	     install ${S}/tests/${i}/*.sh ${D}${PTEST_PATH}/tests/${i}/
	  done

}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"


