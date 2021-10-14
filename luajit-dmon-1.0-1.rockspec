package = "luajit-dmon"
version = "1.0-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-dmon/raw/a865cab61203b25948afdfe5d7514c13a4a7b701/luajit-dmon-1.0-1.tar.gz",
}
description = {
	summary = "An lua-resty-mail port.",
	detailed = [[
		"lua-resty-mail" port
		https://github.com/septag/dmon
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luajit-dmon",
	license = "MIT/X11"
}
dependencies = {
}
build = {
	type = "make",
	modules = {
	},
	build = {
		makefile = "Makefile",
	},
	install = {
		lua = {
			["luajit-dmon.dmon"] = "./luajit-dmon/dmon.lua",
			["luajit-dmon.watch"] = "./luajit-dmon/watch.lua",
		}
	}
}
