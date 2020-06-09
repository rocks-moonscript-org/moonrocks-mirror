package = "LOOP"
version = "3.0-1"
source = {
	url = "http://www.tecgraf.puc-rio.br/~maia/lua/packs/loop-3.0.tar.gz",
}
description = {
	summary = "Class Models for Lua",
	detailed = [[
		LOOP stands for Lua Object-Oriented Programming and is a set of packages
		for supporting different models of object-oriented programming in the
		Lua language. LOOP provides five interoperable class-hierarchy-based
		object models for Lua.
	]],
	license = "MIT",
	homepage = "http://www.tecgraf.puc-rio.br/~maia/lua/loop",
	maintainer = "Renato Maia <maia@tecgraf.puc-rio.br>",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		["loop"] = "lua/loop.lua",
		["loop.base"] = "lua/loop/base.lua",
		["loop.cached"] = "lua/loop/cached.lua",
		["loop.hierarchy"] = "lua/loop/hierarchy.lua",
		["loop.multiple"] = "lua/loop/multiple.lua",
		["loop.proto"] = "lua/loop/proto.lua",
		["loop.scoped"] = "lua/loop/scoped.lua",
		["loop.scoped.debug"] = "lua/loop/scoped/debug.lua",
		["loop.simple"] = "lua/loop/simple.lua",
		["loop.static"] = "lua/loop/static.lua",
		["loop.table"] = "lua/loop/table.lua",
	},
}
