# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=CHORNY
MODULE_VERSION=0.13
MODULE_A_EXT=zip
inherit perl-module

DESCRIPTION='Cross-platform interface to ICMP "ping" utilities'
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
comment() { echo ''; }

COMMON_DEPEND="
	>=dev-lang/perl-5.10.0
	$(comment virtual/perl-Carp)
"
DEPEND="
	${COMMON_DEPEND}
	test? ( >=virtual/perl-Test-Simple-0.96 )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
