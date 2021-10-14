package = "luajit-dmon"
version = "1.0-3"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-dmon/raw/ae81f38f3cb8ac9f37c8fe2a149a85c66f2b52a1/luajit-dmon-1.0-3.tar.gz",
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
