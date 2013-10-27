# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/perl-Test-Simple/perl-Test-Simple-0.980.0-r3.ebuild,v 1.2 2013/09/05 06:53:03 patrick Exp $

DESCRIPTION="Virtual for ${PN#perl-}"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="|| ( =dev-lang/perl-5.18* =dev-lang/perl-5.16* =dev-lang/perl-5.14* ~perl-core/${PN#perl-}-${PV}  )"
