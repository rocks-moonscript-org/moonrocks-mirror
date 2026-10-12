rockspec_format = "3.0"
package = "luarocks-build-autotools"
version = "0.0.3-1"

description = {
	summary = "Build lua rock file by autotools",
	detailed = "Make TeX ecosystem available for lua ecosystem",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/luarocks-build-autotools.md.html",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"luarocks>=3.12.2",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/ffe033cffe9fdab0e3391966c991ac84d0b6e493.zip",
	dir = "texrocks-ffe033cffe9fdab0e3391966c991ac84d0b6e493/packages/luarocks-build-autotools",
}

build = {
	type = "builtin",
}
