# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5
MODULE_AUTHOR=KENTNL
MODULE_VERSION=0.5.2
inherit perl-module

DESCRIPTION="Simple set-and-forget using of a '/share' directory in your projects root"
LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
comment() { echo ''; }
COMMON_DEPEND="
	$(comment virtual/perl-Carp)
	dev-perl/File-ShareDir
	dev-perl/Path-Class
	dev-perl/Path-FindDev
	dev-perl/Path-IsDev
	dev-perl/Path-Tiny
	dev-perl/Sub-Exporter
	>=dev-lang/perl-5.10.0
"
DEPEND="
	${COMMON_DEPEND}
	>=virtual/perl-Module-Build-0.400.700
	virtual/perl-File-Spec
	$(comment build)
	>=virtual/perl-Test-Simple-0.98 $(comment Test::More 0.980.0)
"
RDEPEND="
	${COMMON_DEPEND}
"
SRC_TEST="do"
