package = "diskOP"
version = "1.21.08.13-1"
source = {
	url = "git://github.com/aryajur/diskOP",
	tag = "1.21.08.13"
}
description = {
	summary = "Disk Operation Functions",
	detailed = [[
		Module to Abstract and provide higher level disk operation functions by using the functionality provided by LuaFileSystem
	]],
	homepage = "https://github.com/aryajur/diskOP", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1",
	"luafilesystem >= 1.7"
}
build = {
	type = "builtin",
    modules = {
		diskOP = "src/diskOP.lua",
    },
}