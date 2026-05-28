package = "luapython"
version = "0.1.5-1"
source = {
	url = "git+https://github.com/imitoy/luapython.git",
}
description = {
	summary = "Use Python from Lua",
	detailed = [[luapython lets you import and call Python from Lua. It provides a compiled
C module and Lua helpers]],
	homepage = "https://github.com/imitoy/luapython",
	license = "MIT",
}

rockspec_format = "3.0"
dependencies = {
	"lua >= 5.3, <= 5.4",
}
build = {
	type = "make",
	build_variables = {
		LUA_VERSION = "$(LUA_VERSION)",
		LUA_INCDIR = "$(LUA_INCDIR)",
	},
	install_variables = {
		INSTALL_LUADIR = "$(LUADIR)",
		INSTALL_LIBDIR = "$(LIBDIR)",
	},
}
