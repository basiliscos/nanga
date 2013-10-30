# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.4.1
inherit perl-module

DESCRIPTION="Find a development path somewhere in an upper hierarchy"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
COMMON_DEPEND="
	>=dev-lang/perl-5.10.0
	>=dev-perl/Class-Tiny-0.11.0
	>=dev-perl/Path-IsDev-1.0.0
	>=dev-perl/Path-Tiny-0.44.0
	>=dev-perl/Sub-Exporter-0.984.0
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.400.700
	test? ( >=virtual/perl-Test-Simple-0.99 )
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do parallel"
