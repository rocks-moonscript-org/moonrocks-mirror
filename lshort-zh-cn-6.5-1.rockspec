local git_ref = 'v6.05'
local _git_ref = git_ref:gsub('^v', '')
local modrev = _git_ref:gsub('%.0+', '.')
rockspec_format = "3.0"
package = "lshort-zh-cn"
version = modrev .. "-1"

description = {
	summary = "The Not So Short Introduction To LaTeX2\206\181 (Chinese Edition)",
	license = "GFDL-1.3",
	homepage = "https://github.com/CTeX-org/lshort-zh-cn",
	maintainer = "Louis Stuart",
	labels = {
		"Chinese documentation",
		"Tutorial LaTeX",
	},
}

dependencies = {
	"lua>=5.1",
}

build_dependencies = {
	"cm-unicode",
	"caption",
	"makeindex",
	"light-latex-make",
	"multirow",
	"yhmath",
	"epstopdf-pkg",
	"latex-tools",
	"geometry",
	"latex-amsmath",
	"float",
	"booktabs",
	"hyperref",
	"lualatex",
	"amsfonts",
	"pgf",
	"ulem",
	"amscls",
	"xcolor",
	"makecell",
	"ctex",
	"fancyvrb",
	"jknappen",
	"hologo",
	"colortbl",
}

source = {
	url = "https://github.com/CTeX-org/lshort-zh-cn/archive/" .. git_ref .. ".zip",
	dir = "lshort-zh-cn-" .. _git_ref .. "/src",
}

build = {
	type = "command",
	build_command = "llmk lshort-zh-cn.tex",
	install = {
		conf = {
			["../doc/lshort-zh-cn.pdf"] = "lshort-zh-cn.pdf",
		},
	},
}
