# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=1.000000
inherit perl-module

DESCRIPTION="Determine if a given Path resembles a development source tree"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"
comment() { echo ''; }
COMMON_DEPEND="
	>=dev-lang/perl-5.10.0
	$(comment virtual/perl-Carp)
	>=dev-perl/Class-Tiny-0.11.0
	>=dev-perl/File-HomeDir-1.0.0
	>=dev-perl/Module-Runtime-0.13.0
	>=dev-perl/Path-Tiny-0.12.0
	>=dev-perl/Role-Tiny-1.2.5
	>=dev-perl/Sub-Exporter-0.984.0
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.400.700
	test? (
		>=virtual/perl-Test-Simple-0.99
		>=dev-perl/Test-Fatal-0.10.0
	)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do parallel"
