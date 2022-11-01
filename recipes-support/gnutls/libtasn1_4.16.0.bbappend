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
		install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/ 
		for i in benchmark coding decoding decoding-invalid-pkcs7 decoding-invalid-x509 parser.sh threadsafety crlf;\
		do install ${S}/tests/${i} ${D}${PTEST_PATH}/tests/ ;\
		done
		cp ${S}/tests/*.der ${D}${PTEST_PATH}/tests/
		cp ${S}/tests/*.asn ${D}${PTEST_PATH}/tests/
		cp ${S}/tests/*.p12 ${D}${PTEST_PATH}/tests/
		find ${B}/tests/ -executable -exec cp {} ${D}${PTEST_PATH}/tests/ \;
		install ${S}/build-aux/test-driver ${D}${PTEST_PATH}/tests/
		sed -i 's#../src/asn1Parser#asn1Parser#' ${D}${PTEST_PATH}/tests/parser.sh
		sed -i 's#../src/asn1Decoding#asn1Decoding#' ${D}${PTEST_PATH}/tests/*
		sed -i 's#../src/asn1Coding#asn1Coding#' ${D}${PTEST_PATH}/tests/*
		sed -i 's#../src/asn1Parser#asn1Parser#' ${D}${PTEST_PATH}/tests/*

		for i in asn1Coding asn1Decoding asn1Parser ;\
		do install ${B}/src/${i} ${D}${PTEST_PATH}/tests/ ;\
		done


}

RDEPENDS_${PN}-ptest += "bash"
