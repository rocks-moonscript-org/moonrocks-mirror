package = "rocksfs"
version = "1.01.06.06-01"
source = {
	url = "https://github.com/Deepak123bharat/stand-alone-rocks",
	tag = "1.01.06"
}
description = {
	summary = "Module for filesystem and platform abstractions.",
	detailed = [[
		fs is a Lua implementation of filesystem and platform abstractions.
	]],
	homepage = "https://github.com/Deepak123bharat/stand-alone-rocks/tree/main/rocks.fs", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		rocksfs = "src/fs.lua"
	}
}
