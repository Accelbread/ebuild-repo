# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

FEDREL="1.fc35"

DESCRIPTION="Twitter Emoji for everyone."
HOMEPAGE="https://github.com/twitter/twemoji"
SRC_URI="https://archives.fedoraproject.org/pub/fedora/linux/development/rawhide/Everything/x86_64/os/Packages/${PN:0:1}/twitter-${PN}-fonts-${PV}-${FEDREL}.noarch.rpm"

LICENSE="MIT CC-BY-4.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
S="${WORKDIR}/usr/share/fonts/${PN}"
FONT_S="${S}"
FONT_CONF=( "${FILESDIR}/75-${PN}.conf" )
FONT_SUFFIX="ttf"
DEPEND="app-arch/libarchive[zstd]"

src_unpack() {
	bsdtar xf "${DISTDIR}/${A}" || die
}
