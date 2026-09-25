rockspec_format = "3.0"
package = "luarocks-build-tds"
version = "0.0.1-1"

description = {
	summary = "Build lua rock file from TeX distribution structure (TDS) directory",
	detailed = "Make TeX ecosystem available for lua ecosystem",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/luarocks-build-tds.md.html",
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
	url = "https://github.com/ustctug/texrocks/archive/22ccde5ea42ba03cc6638a2d46d8f1ba96e0fa68.zip",
	dir = "texrocks-22ccde5ea42ba03cc6638a2d46d8f1ba96e0fa68/packages/luarocks-build-tds",
}

build = {
	type = "builtin",
}
