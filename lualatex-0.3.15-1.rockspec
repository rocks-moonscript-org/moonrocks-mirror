rockspec_format = "3.0"
package = "lualatex"
version = "0.3.15-1"

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
	"texrocks >= 0.3.12",
	"lm >= 2.5",
	"latex-base >= 2026.6.1",
	"luaotfload >= 3.29",
	"lua-uni-algos >= 0.5",
	"tex-ini-files >= 2026.3.7",
	"amsfonts >= 3.4",
}

build_dependencies = {
	"lua-uni-algos >= 0.5",
	"texrocks >= 0.3.12",
	"latex-fonts >= 0.0.1",
	"tex-ini-files >= 2026.3.7",
	"latex-base >= 2026.6.1",
	"amsfonts >= 3.4",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.15.zip",
	dir = "texrocks-0.3.15/packages/lualatex",
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
