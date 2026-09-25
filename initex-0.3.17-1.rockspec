rockspec_format = "3.0"
package = "initex"
version = "0.3.17-1"

description = {
	summary = "An initial TeX without any extra features except generating other TeXs by `initex --ini XXX.ini`",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/initex.md.html",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua >= 5.1",
	"texrocks == 0.3.17",
}

build_dependencies = {
	"texrocks == 0.3.17",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.17.zip",
	dir = "texrocks-0.3.17/packages/initex",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "bin/initex --ini --interaction=nonstopmode initex.ini",
	install = {
		conf = {
			["../web2c/luahbtex/initex.fmt"] = "initex.fmt",
		},
		bin = {
			initex = "bin/initex",
		},
	},
}
