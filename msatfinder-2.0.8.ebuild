# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="A simple Perl script for finding microsatellies in genomic
sequences."
HOMEPAGE="http://www.genomics.ceh.ac.uk/msatfinder/"
SRC_URI="http://www.bioinf.ceh.ac.uk/msatfinder/downloads/${P}.tar.gz"
# won't work because of - and _
# ...turn on fetch restrictions

LICENSE="GPL"
SLOT="0"
KEYWORDS="x86 ppc"
IUSE=""

DEPEND="sci-biology/bioperl sci-biology/emboss dev-perl/Config-Simple"
RDEPEND=""

src_unpack() 
{
	unpack ${P}.tar.gz
}
src_install() 
{
	make DESTDIR="${D}" install
}
