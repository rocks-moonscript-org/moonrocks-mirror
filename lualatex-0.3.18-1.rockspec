rockspec_format = "3.0"
package = "lualatex"
version = "0.3.18-1"

description = {
	summary = "lualatex for LaTeX",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://www.lualatex.org/",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua >= 5.1",
	"tex-ini-files == 2026.3.27",
	"texrocks == 0.3.18",
	"latex-base == 2026.6.1",
	"lm >= 2.5",
	"lua-uni-algos >= 0.5",
	"luaotfload >= 3.29",
	"amsfonts >= 3.4",
}

build_dependencies = {
	"latex-base == 2026.6.1",
	"tex-ini-files == 2026.3.27",
	"latex-support == 2026.6.1",
	"texrocks == 0.3.18",
	"latex-fonts >= 0.0.1",
	"amsfonts >= 3.4",
	"lua-uni-algos >= 0.5",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.18.zip",
	dir = "texrocks-0.3.18/packages/lualatex",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "bin/lualatex --ini --interaction=nonstopmode lualatex.ini",
	install = {
		conf = {
			["../web2c/luahbtex/lualatex.fmt"] = "lualatex.fmt",
		},
		bin = {
			lualatex = "bin/lualatex",
		},
	},
}
