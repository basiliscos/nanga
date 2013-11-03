# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=ELMEX
MODULE_VERSION=1.23
inherit perl-module

DESCRIPTION="A class that provides an event callback interface"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-lang/perl-5.10.0
	dev-perl/common-sense
	>=dev-perl/AnyEvent-3.500.0
"
DEPEND="
	${COMMON_DEPEND}
	$(comment virtual/perl-Carp)
	test? ( virtual/perl-Test-Simple )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do parallel"
