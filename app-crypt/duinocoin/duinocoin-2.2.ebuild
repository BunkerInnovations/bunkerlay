EAPI=6

DESCRIPTION="Duino-Coin is a coin that can be mined with Arduino and ESP boards."
HOMEPAGE="https://duinocoin.com"
SRC_URI="https://github.com/revoxhere/duino-coin/archive/2.2.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"

src_configure() {
	mkdir -p "~/duco"
}

src_install() {
cp "${P}.tar.gz" "$HOME/duco"
cd "$HOME/duco"
tar -xzf "${P}.tar.gz"
rm -rf "${P}.tar.gz"
}

