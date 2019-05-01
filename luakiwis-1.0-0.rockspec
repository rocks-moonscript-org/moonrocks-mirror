package = "LuaKiwis"
version = "1.0-0"
source = {
	url = "https://github.com/JMurilloM/luarocksExample.git"
}
description = {
	summary = "A helloworld lua",
	detailed = [[
		Example of helloworld for Lua
	]],
	homepage = "https://github.com/JMurilloM/luarocksExample",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		["helloworld.handler"] = "src/handler.lua",
    	["helloworld.access"] = "src/access.lua",
    	["helloworld.schema"] = "src/schema.lua",
	}
}
