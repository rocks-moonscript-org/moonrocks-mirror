package = "luajit-dmon"
version = "1.0-4"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-dmon/raw/7dc92c48820f96795c31502efb2cf2c6aa5ab4d3/luajit-dmon-1.0-4.tar.gz",
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
