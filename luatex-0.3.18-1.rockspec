rockspec_format = "3.0"
package = "luatex"
version = "0.3.18-1"

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
	"texrocks == 0.3.18",
}

build_dependencies = {
	"unicode-data >= 1.18",
	"amsfonts >= 3.4",
	"etex >= 2.1",
	"texrocks == 0.3.18",
	"tex-ini-files >= 2026.3.7",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.18.zip",
	dir = "texrocks-0.3.18/packages/luatex",
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
