rockspec_format = "3.0"
package = "texdef"
version = "0.3.13-1"

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
	"argparse >= 0.7.1",
	"currfile >= 1.0",
	"luatex >= 0.3.17",
	"minijinja-lua >= 0.0.1",
	"lualatex >= 0.3.17",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/78d9bb15967a03bb13a3e68012713fa8de17052e.zip",
	dir = "texrocks-78d9bb15967a03bb13a3e68012713fa8de17052e/packages/texdef",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
