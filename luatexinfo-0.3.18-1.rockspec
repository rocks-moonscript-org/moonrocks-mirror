rockspec_format = "3.0"
package = "luatexinfo"
version = "0.3.18-1"

description = {
	summary = "LuaTeX for TeXinfo",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://www.gnu.org/software/texinfo/",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua >= 5.1",
	"texrocks == 0.3.18",
	"amsfonts >= 3.4",
}

build_dependencies = {
	"texinfo >= 7.2",
	"texrocks == 0.3.18",
	"tex-ini-files >= 2026.3.7",
	"amsfonts >= 3.4",
	"knuth-lib >= 2021.2.5",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.18.zip",
	dir = "texrocks-0.3.18/packages/luatexinfo",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "bin/luatexinfo --ini --interaction=nonstopmode luatexinfo.ini",
	install = {
		conf = {
			["../web2c/luahbtex/luatexinfo.fmt"] = "luatexinfo.fmt",
		},
		bin = {
			luatexinfo = "bin/luatexinfo",
		},
	},
}
