package = "LuaTerminalRemote"
version = "1.14.09.10-1"
source = {
	url = "git://github.com/aryajur/LuaTerminalRemote.git",
	tag = "1.14.09"
}
description = {
	summary = "Companian module to LuaTerminal to provide remote terminal",
	detailed = [[
		This is a companion Lua module provided with LuaTerminal and it allows easy connection to a socket terminal opened by LuaTerminal by any Lua script.
	]],
	homepage = "http://www.amved.com/milindsweb/LuaTerminalRemote.html", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.2",
	"luasocket",
}
build = {
	type = "builtin",
	modules = {
		LuaTerminalRemote = "src/LuaTerminalRemote.lua"
	}
}