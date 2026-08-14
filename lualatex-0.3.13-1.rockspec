rockspec_format = "3.0"
package = "lualatex"
version = "0.3.13-1"

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
	"tex-ini-files == 2025.02.09",
	"amsfonts >= 3.04",
	"texrocks >= 0.3.12",
	"luaotfload >= 3.29",
	"latex-base == 2025.06.01",
	"lm == 2.005",
}

build_dependencies = {
	"tex-ini-files == 2025.02.09",
	"latex-fonts >= 0.0.1",
	"latex-base == 2025.06.01",
	"amsfonts == 3.04",
	"texrocks >= 0.3.12",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/lualatex",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "bin/lualatex --ini --interaction=nonstopmode lualatex.ini",
	install = {
		bin = {
			lualatex = "bin/lualatex",
		},
		conf = {
			["../web2c/luahbtex/lualatex.fmt"] = "lualatex.fmt",
		},
	},
}
