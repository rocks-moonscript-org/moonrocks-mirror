rockspec_format = "3.0"
package = "luarocks-build-autotools"
version = "0.0.2-1"

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
	"lua >= 5.1",
	"luarocks >= 3.12.2",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/e6473f7c4c0cacb40a3bdae8075eec20dd2e1686.zip",
	dir = "texrocks-e6473f7c4c0cacb40a3bdae8075eec20dd2e1686/packages/luarocks-build-autotools",
}

build = {
	type = "builtin",
}
