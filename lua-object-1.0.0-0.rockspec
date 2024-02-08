rockspec_format = "3.0"
package = "lua-object"
version = "1.0.0-0"
source = {
	url = "git://github.com/nusov/lua-object.git"
}
description = {
	summary = "Prototype based OOP library for Lua",
	detailed = [[
Prototype-based OOP library for Lua (compatible with LuaJIT)

The project is aimed to provide easy to use library for objects in Lua.

Main features:
- Single inheritance
- Traits
- LuaJIT support
]],
	homepage = "https://github.com/nusov/lua-object",
	license = "MIT",
	labels = {
		"oop",
		"object",
		"class",
		"prototype"
	}
}
dependencies = {
	"lua >= 5.1, <= 5.4"
}
build = {
	install = {
		lua = {
			object = "src/lua-object/object.lua"
		}
	}
}
