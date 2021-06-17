package = "rocksfs"
version = "1.01.07.06-01"
source = {
	url = "https://github.com/Deepak123bharat/rocks.fs",
	tag = "1.01.07"
}
description = {
	summary = "Module for filesystem and platform abstractions.",
	detailed = [[
		fs is a Lua implementation of filesystem and platform abstractions.
	]],
	homepage = "https://github.com/Deepak123bharat/rocks.fs", 
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
