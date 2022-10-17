FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://run-ptest \
			file://Makefile \
            "

inherit ptest


do_compile_ptest() {
   make -i check
}


do_install_ptest(){
        install -d ${D}${PTEST_PATH}/tests/
		install ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
		for i in ascii_tag custom_dir custom_dir_EXIF_231 defer_strile_loading \
			defer_strile_writing long_tag rational_precision2double  raw_decode \
				rewrite short_tag strip_rw testtypes; \
		    do cp ${B}/test/$i ${D}${PTEST_PATH}/tests/ ; \
		done

		install ${B}/tools/thumbnail ${D}/${bindir}/
		install ${B}/tools/rgb2ycbcr ${D}/${bindir}/
		cp ${S}/config ${D}${PTEST_PATH}/tests/ -rf 
		cp ${S}/test/*.sh ${D}${PTEST_PATH}/tests/ -rf
		cp ${S}/test/images ${D}${PTEST_PATH}/tests/ -rf
		sed -i "s/TOOLS=.*/TOOLS='\/usr\/bin'/" ${D}${PTEST_PATH}/tests/common.sh
		cp ${S}/test/refs ${D}${PTEST_PATH}/tests/ -rf
}

FILES_${PN}-ptest += "${bindir}/thumbnail"
FILES_${PN}-ptest += "${bindir}/rgb2ycbcr"

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
RDEPENDS_${PN}-ptest += "gcc"
