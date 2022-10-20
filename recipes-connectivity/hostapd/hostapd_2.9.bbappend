FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
			file://tests.tar.gz \
            "

inherit ptest


do_compile_ptest() {

	cp ${WORKDIR}/tests ${S}/ -rf
	make 
	cd ${S}/src
	make 
	cd ${S}/tests/
    BUILDDIR=$(pwd)
	make
}

do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		for i in test-aes test-base64 test-https test-https_server test-list \
			test-md4 test-milenage test-rc4 test-rsa-sig-ver test-sha1 \
				test-sha256 test-x509v3; \
		    do install -D ${S}/tests/$i ${D}${PTEST_PATH}/tests/ ;\
		done
}

RDEPENDS_${PN}-ptest += "bash"

