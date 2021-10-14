package = "luajit-dmon"
version = "1.0-2"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-dmon/raw/efa67184c38a67cd30110690dbfe99e418e87043/luajit-dmon-1.0-2.tar.gz",
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
