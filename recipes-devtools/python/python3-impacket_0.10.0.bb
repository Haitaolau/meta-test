SUMMARY = "Impacket is a collection of Python classes for working with network protocols. Impacket is \
		focused on providing low-level programmatic access to the packets and for some protocols (e.g. SMB1-3 and MSRPC) \
			the protocol implementation itself"

LICENSE = "Apache-1.1"
PYPI_PACKAGE = "impacket"

LIC_FILES_CHKSUM = "file://LICENSE;md5=35c9a75332253c9ba95de40e3c737c30"

SRC_URI[md5sum] = "4d8772c08dd28630648855fcbeb8ce95"
SRC_URI[sha256sum] = "b8eb020a2cbb47146669cfe31c64bb2e7d6499d049c493d6418b9716f5c74583"


SRC_URL ="https://files.pythonhosted.org/packages/c9/31/835e095d3ed804bbc22e96db2d999045608cbfdab653b1d19af65973fb33/impacket-${PV}.tar.gz"

inherit pypi setuptools3
