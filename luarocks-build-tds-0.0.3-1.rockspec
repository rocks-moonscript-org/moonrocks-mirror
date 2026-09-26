rockspec_format = "3.0"
package = "luarocks-build-tds"
version = "0.0.3-1"

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
	"lua>=5.1",
	"luarocks>=3.12.2",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/fe7c8bc2f714a694b5fca6af0655564bda289de3.zip",
	dir = "texrocks-fe7c8bc2f714a694b5fca6af0655564bda289de3/packages/luarocks-build-tds",
}

build = {
	type = "builtin",
}
