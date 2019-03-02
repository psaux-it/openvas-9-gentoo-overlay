# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit eutils

DESCRIPTION="A remote security scanner"
HOMEPAGE="http://www.openvas.org/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
IUSE="+extras +cli +gsa +ospd ldap radius"

RDEPEND="
	radius? ( >=net-analyzer/openvas-libraries-9.0.3[radius] )
	ldap? ( >=net-analyzer/openvas-libraries-9.0.3[ldap] )
	>=net-analyzer/openvas-libraries-9.0.3
	>=net-analyzer/openvas-scanner-5.1.3
	>=net-analyzer/openvas-manager-7.0.3
	gsa? ( >=net-analyzer/greenbone-security-assistant-7.0.3 )
	cli? ( >=net-analyzer/gvm-tools-1.4.1 )
	ospd? ( >=net-analyzer/ospd-1.3.2 )
	extras? (
		>=net-analyzer/openvas-libraries-9.0.3[extras]
		>=net-analyzer/openvas-scanner-5.1.3[extras]
		>=net-analyzer/openvas-manager-7.0.3[extras]
		>=net-analyzer/greenbone-security-assistant-7.0.3[extras]
		>=net-analyzer/ospd-1.3.2[extras]
	)"

pkg_postinst() {
	elog "------------------------------IMPORTANT---------------------------"
	elog "| Please read important notes now --> /etc/openvas/OPENVAS.gentoo|"
	elog "------------------------------------------------------------------"
	elog "Additional support for extra checks can be get from"
	optfeature "Nikto — a web server scanning and testing tool" net-analyzer/nikto
	optfeature "NMAP — a portscanner" net-analyzer/nmap
	optfeature "ike-scan - an IPsec VPN scanning, fingerprinting and testing tool" net-analyzer/ike-scan
	optfeature "amap — an application protocol detection tool" net-analyzer/amap
	optfeature "ldapsearch from OpenLDAP utilities — retrieves information from LDAP dictionaries" net-nds/openldap
	optfeature "ovaldi (OVAL) — an OVAL Interpreter" app-forensics/ovaldi
	optfeature "portbunny — a Linux-kernel-based portscanner" net-analyzer/portbunny
	optfeature "w3af — a web application attack and audit framework" net-analyzer/w3af
}
