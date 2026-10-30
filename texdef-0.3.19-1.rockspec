rockspec_format = "3.0"
package = "texdef"
version = "0.3.19-1"

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
	"lua>=5.1",
	"datafile>=0.0.1",
	"lualatex>=0.3.17",
	"currfile>=1.0",
	"argparse>=0.7.1",
	"luatex>=0.3.17",
	"minijinja-lua>=0.0.1",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/eb1d1ab1e78057527de60023eeeb4c46576d672e.zip",
	dir = "texrocks-eb1d1ab1e78057527de60023eeeb4c46576d672e/packages/texdef",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
