package = "bitazard"
version = "1.0.0-2"
source = {
	url = "git://github.com/morikosm/bitazard",
}
description = {
	summary = "A Pure Lua bit manipulation library.",
	homepage = "https://github.com/morikosm/bitazard",
	license = "zlib",
}
dependencies = {
	"lua >= 5.1, <=5.4",
}
build = {
	modules = {
		bitazard = "init.lua",
	}
}