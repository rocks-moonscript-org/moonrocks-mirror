rockspec_format = "3.0"
package = "luarocks-build-tds"
version = "0.0.2-1"

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
	url = "https://github.com/ustctug/texrocks/archive/231ca35fdbaf6bee57fac78c4994bc1c6d94d563.zip",
	dir = "texrocks-231ca35fdbaf6bee57fac78c4994bc1c6d94d563/packages/luarocks-build-tds",
}

build = {
	type = "builtin",
}
