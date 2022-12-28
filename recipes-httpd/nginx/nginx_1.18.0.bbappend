FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://0001-nginx-merge-test-from-nginx-tests-repo.patch \
            file://run-ptest \
            "

inherit ptest


do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		cp ${S}/tests/* ${D}${PTEST_PATH}/tests/ -rf
}

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "perl"
RDEPENDS_${PN}-ptest += "fcgi"


PACKAGECONFIG_append = " http2"
PACKAGECONFIG_append = " stream"
PACKAGECONFIG_append = " http_gunzip"
PACKAGECONFIG_append = " http-auth-request"
PACKAGECONFIG_append = " http_realip"
PACKAGECONFIG_append = " mail"
PACKAGECONFIG_append = " http_sub"
PACKAGECONFIG_append = " http_stub_status"
PACKAGECONFIG_append = " http_secure_link"
PACKAGECONFIG_append = " http_slice"
PACKAGECONFIG_append = " http_random_index"
PACKAGECONFIG_append = " http_addition"
PACKAGECONFIG_append = " stream_ssl"
PACKAGECONFIG_append = " stream_ssl_preread"
PACKAGECONFIG_append = " stream_realip"

PACKAGECONFIG[stream_realip] = "--with-stream_realip_module,,"
PACKAGECONFIG[stream_ssl] = "--with-stream_ssl_module,,"
PACKAGECONFIG[stream_ssl_preread] = "--with-stream_ssl_preread_module,,"
PACKAGECONFIG[http_addition] = "--with-http_addition_module,,"
PACKAGECONFIG[http_slice] = "--with-http_slice_module,,"
PACKAGECONFIG[http_secure_link] = "--with-http_secure_link_module,,"
PACKAGECONFIG[http_gunzip] = "--with-http_gunzip_module,,"
PACKAGECONFIG[stream] = "--with-stream,,"
PACKAGECONFIG[mail] = "--with-mail,,"
PACKAGECONFIG[http_realip] = "--with-http_realip_module,,"
PACKAGECONFIG[http_sub] = "--with-http_sub_module,,"
PACKAGECONFIG[http_stub_status] = "--with-http_stub_status_module,,"
PACKAGECONFIG[http_xslt] = "--with-http_xslt_module,,"
PACKAGECONFIG[http_random_index] = "--with-http_random_index_module,,"

