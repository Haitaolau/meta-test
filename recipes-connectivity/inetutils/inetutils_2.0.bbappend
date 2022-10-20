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
    for i in addrpeek identify localhost ls readutmp runtime-ipv6 tcpget test-snprintf waitdaemon; \   
		do install -D ${B}/tests/$i ${D}${PTEST_PATH}/tests/ ;\
	done
	install -D ${S}/tests/*.sh ${D}${PTEST_PATH}/tests/
	install -D ${WORKDIR}/Makefile ${D}${PTEST_PATH}/tests/
	install -D ${S}/build-aux/test-driver ${D}${PTEST_PATH}/tests/
	install -D ${B}/tests/tools.sh ${D}${PTEST_PATH}/tests/
	install -D ${B}/src/tftpd ${D}/${bindir}/
	sed -i 's#^GREP=.*#GREP=${GREP:-/bin/grep}#' ${D}${PTEST_PATH}/tests/tools.sh
    sed -i 's#^EGREP=.*#EGREP=${EGREP:-"/bin/grep -E"}#' ${D}${PTEST_PATH}/tests/tools.sh
    sed -i 's#^FGREP=.*#FGREP=${FGREP:-"/bin/grep -F"}#' ${D}${PTEST_PATH}/tests/tools.sh
	sed -i 's#^DD=.*#DD=${DD:-/bin/dd}#' ${D}${PTEST_PATH}/tests/tools.sh
	sed -i 's#^MKTEMP=.*#MKTEMP=${MKTEMP:-/bin/mktemp}#' ${D}${PTEST_PATH}/tests/tools.sh
	sed -i 's#PING=.*#PING=${PING:-/bin/ping}#' ${D}${PTEST_PATH}/tests/ping-localhost.sh
	sed -i 's#PING6=.*#PING6=${PING6:-/bin/ping6}#' ${D}${PTEST_PATH}/tests/ping-localhost.sh
	sed -i 's#^TRACEROUTE=.*#TRACEROUTE=${TRACEROUTE:-/usr/bin/traceroute}#' ${D}${PTEST_PATH}/tests/traceroute-localhost.sh
	sed -i 's#^TFTP=.*#TFTP=${TFTP:-/usr/bin/tftp}#' ${D}${PTEST_PATH}/tests/tftp.sh
	sed -i 's#^TFTPD=.*#TFTPD=${TFTPD:-/usr/bin/tftpd}#' ${D}${PTEST_PATH}/tests/tftp.sh
    sed -i 's#^INETD=.*#INETD=${INETD:-/usr/bin/inetd}#' ${D}${PTEST_PATH}/tests/tftp.sh
	sed -i 's#^IFCONFIG=.*#IFCONFIG=${IFCONFIG:-/bin/ifconfig}#' ${D}${PTEST_PATH}/tests/tftp.sh
	sed -i 's#^SYSLOGD=.*#SYSLOGD=${SYSLOGD:-/sbin/syslogd}#' ${D}${PTEST_PATH}/tests/syslogd.sh
	sed -i 's#^LOGGER=.*#LOGGER=${LOGGER:-/usr/bin/logger}#' ${D}${PTEST_PATH}/tests/syslogd.sh
	sed -i 's#^hostname=.*#hostname=${hostname:-/bin/hostname}#' ${D}${PTEST_PATH}/tests/hostname.sh
	sed -i 's#^DNSDOMAINNAME=.*#DNSDOMAINNAME=${DNSDOMAINNAME:-/bin/dnsdomainname}#' ${D}${PTEST_PATH}/tests/dnsdomainname.sh
	sed -i 's#^INETD=.*#INETD=${INETD:-/usr/bin/inetd}#' ${D}${PTEST_PATH}/tests/telnet-localhost.sh
	sed -i 's#^TELNET=.*#TELNET=${TELNET:-/usr/bin/telnet}#' ${D}${PTEST_PATH}/tests/telnet-localhost.sh
	sed -i 's#^FTP=.*#FTP=${FTP:-/usr/bin/ftp}#' ${D}${PTEST_PATH}/tests/ftp-localhost.sh
	sed -i 's#^FTPD=.*#FTPD=${FTPD:-/usr/bin/ftpd}#' ${D}${PTEST_PATH}/tests/ftp-localhost.sh
	sed -i 's#^INETD=.*#INETD=${INETD:-/usr/bin/inetd}#' ${D}${PTEST_PATH}/tests/ftp-localhost.sh
}


FILES_${PN}-ptest += "${bindir}/tftpd"

RDEPENDS_${PN}-ptest += "bash"
RDEPENDS_${PN}-ptest += "make"
RDEPENDS_${PN}-ptest += "inetutils-inetd"
RDEPENDS_${PN}-ptest += "inetutils-ping6"
RDEPENDS_${PN}-ptest += "inetutils-syslogd"
RDEPENDS_${PN}-ptest += "inetutils-logger"
