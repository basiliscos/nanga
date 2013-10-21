# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=DAGOLDEN
MODULE_VERSION=0.011
inherit perl-module

DESCRIPTION="Minimalist class construction"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-lang/perl-5.10.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment virtual/perl-Carp)
	test? ( >=virtual/perl-Test-Simple-0.96 )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do parallel"
