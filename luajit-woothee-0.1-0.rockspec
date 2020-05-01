package = "luajit-woothee"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-woothee/raw/421ee16fdc92bf725a9158d9de2a20fc9342ed09/luajit-woothee-0.1-0.tar.gz",
}
description = {
	summary = "luajit-woothee",
	detailed = [[
		[woothee-c](https://github.com/kjdev/woothee-c) ffi library.
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luajit-woothee",
	license = "MIT/X11"
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["luajit-woothee.cdef"] = "luajit-woothee/cdef.lua",
		["luajit-woothee.implement"] = "luajit-woothee/implement.lua",
		["luajit-woothee.init"] = "luajit-woothee/init.lua",
	},
}
