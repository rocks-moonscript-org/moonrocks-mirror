package = "luarray"
rockspec_format = "3.0"
version = "1.0.0-1"
source = {
	url = "git://github.com/stein197/luarray",
	tag = "1.0.0",
	branch = "main"
}
description = {
	summary = "Instantiatable flexible array implementation with familiar methods for Lua",
	detailed = [[
		Lua provides only a few methods to work with tables.
		This package is an attempt to extend Lua's capabilities to work with array-like structures by introducing a wrapper with a bunch of useful and common methods which other programming languages have.
	]],
	homepage = "https://github.com/stein197/luarray",
	issues_url = "https://github.com/stein197/luarray/issues",
	license = "MIT",
	maintainer = "Nail' Gafarov <nil20122013@gmail.com>",
	labels = {
		"array", "table"
	}
}
dependencies = {
	"lua >= 5.3"
}
build = {
	type = "builtin",
	modules = {
		["luarray"] = "init.lua"
	}
}
