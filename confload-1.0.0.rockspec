package = "confload"
version = "1.0.0"
source = {
	url = "https://github.com/shawnjb/confload"
}
description = {
	summary = "A Lua library for loading configuration files",
	detailed = [[
    This package provides a simple and easy-to-use API for loading configuration files in various formats, such as JSON, YAML, and INI. It supports file path resolution, default values, and environment variable substitution.
    ]],
	homepage = "https://github.com/shawnjb/confload",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1",
	"luafilesystem >= 1.7.0",
	"lua-cjson >= 2.1.0",
	"lua-yaml >= 1.2"
}
build = {
	type = "builtin",
	modules = {
		["confload"] = "src/confload.lua"
	}
}
