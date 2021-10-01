package = "luajit-dmon"
version = "1.0-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-dmon/raw/6220099a7c455c9a831c6bd1053ecbe146b66158/luajit-dmon-1.0-0.tar.gz",
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
