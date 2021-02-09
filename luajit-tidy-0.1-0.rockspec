package = "luajit-tidy"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luajit-tidy/raw/adf26c801cc087255d7073e57aab050aa43ad437/luajit-tidy-0.1-0.tar.gz",
}
description = {
	summary = "libtidy luajit binding.",
	detailed = [[
		[libtidy](https://www.html-tidy.org/) ffi library.
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luajit-tidy",
	license = "MIT/X11"
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
		["luajit-tidy.init"] = "luajit-tidy/init.lua",
		["luajit-tidy.cdef"] = "luajit-tidy/cdef.lua",
	},
}
