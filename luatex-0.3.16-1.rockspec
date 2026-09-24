rockspec_format = "3.0"
package = "luatex"
version = "0.3.16-1"

description = {
	summary = "LuaTeX for plainTeX",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://www.luatex.org/",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua >= 5.1",
	"amsfonts >= 3.4",
	"texrocks == 0.3.16",
}

build_dependencies = {
	"tex-ini-files >= 2026.3.7",
	"etex >= 2.1",
	"amsfonts >= 3.4",
	"unicode-data >= 1.18",
	"texrocks == 0.3.16",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.16.zip",
	dir = "texrocks-0.3.16/packages/luatex",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "bin/luatex --ini --interaction=nonstopmode luatex.ini",
	install = {
		conf = {
			["../web2c/luahbtex/luatex.fmt"] = "luatex.fmt",
		},
		bin = {
			luatex = "bin/luatex",
		},
	},
}
