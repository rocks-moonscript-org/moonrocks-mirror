package="memory"
version="2.0.0-1"
source = {
	url = "https://github.com/renatomaia/lua-memory/archive/refs/tags/v2.0.0.zip",
	dir = "lua-memory-2.0.0",
	md5 = "75b2ca2894741a89a6a97c1699c8bf1e",
}
description = {
	summary = "Manipulation of writable memory areas in Lua",
	detailed = [[
		Memory areas are much like Lua strings, but their contents can be
		modified in place and have an identity (selfness) independent from
		their contents.

		To install the C library, see:
		https://github.com/renatomaia/lua-memory/blob/v2.0.0/doc/install.md#luarocks
	]],
	homepage = "https://github.com/renatomaia/lua-memory",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.4",
}
external_dependencies = {
	LUAMEM = {
		header = "luamem.h",
		library = "luamem",
	},
}
build = {
	type = "builtin",
	modules = {
		memory = {
			sources = "src/lmemlib.c",
			libdirs = "$(LUAMEM_LIBDIR)",
			incdirs = "$(LUAMEM_INCDIR)",
			libraries = external_dependencies.LUAMEM.library,
		},
	},
}
