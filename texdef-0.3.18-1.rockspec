rockspec_format = "3.0"
package = "texdef"
version = "0.3.18-1"

description = {
	summary = "Show definitions of TeX commands",
	detailed = "A reimplementation of https://github.com/MartinScharrer/texdef/ by texlua",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/texdef.md.html",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua >= 5.1",
	"currfile >= 1.0",
	"lualatex >= 0.3.17",
	"luatex >= 0.3.17",
	"argparse >= 0.7.1",
	"minijinja-lua >= 0.0.1",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.18.zip",
	dir = "texrocks-0.3.18/packages/texdef",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
