package = "loopcomp"
version = "1.0beta-1"
source = {
	url = "https://github.com/renatomaia/loop-compdev/archive/v1.0beta.zip",
	dir = "loop-compdev-1.0beta",
}
description = {
	summary = "Component Models for Lua",
	detailed = [[
		The LOOP Component is a set of packages for supporting different models
		of component-based design in the Lua language.
	]],
	license = "MIT",
	homepage = "http://www.tecgraf.puc-rio.br/~maia/lua/loop/component",
	maintainer = "Renato Maia <maia@tecgraf.puc-rio.br>",
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"loop >= 3.0, < 4.0",
}
build = {
	type = "builtin",
	modules = {
		["loop.component.base"] = "lua/loop/component/base.lua",
		["loop.component.contained"] = "lua/loop/component/contained.lua",
		["loop.component.dynamic"] = "lua/loop/component/dynamic.lua",
		["loop.component.intercepted"] = "lua/loop/component/intercepted.lua",
		["loop.component.wrapped"] = "lua/loop/component/wrapped.lua",
	},
}
