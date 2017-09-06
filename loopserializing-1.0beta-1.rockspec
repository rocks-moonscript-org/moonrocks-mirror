package = "loopserializing"
version = "1.0beta-1"
source = {
	url = "https://github.com/renatomaia/loop-serializing/archive/v1.0beta.zip",
	dir = "loop-serializing-1.0beta",
}
description = {
	summary = "LOOP classes of serializing utilities.",
	detailed = [[
		Classes that implement a flexible mechanism that serializes almost any
		value into a Lua code that can be concatenated with other chunks of code
		to produce complex automatic generated scripts.
	]],
	homepage = "https://git.tecgraf.puc-rio.br/maia/lua-loopserializing",
	license = "MIT",
}
dependencies = {
	"lua >= 5.2, < 5.4",
	"loop >= 3.0, < 4.0",
}
build = {
	type = "builtin",
	modules = {
		['loop.serial.FileStream'] = "lua/loop/serial/FileStream.lua",
		['loop.serial.Serializer'] = "lua/loop/serial/Serializer.lua",
		['loop.serial.Stream'] = "lua/loop/serial/Stream.lua",
		['loop.serial.StringStream'] = "lua/loop/serial/StringStream.lua",
	},
}
