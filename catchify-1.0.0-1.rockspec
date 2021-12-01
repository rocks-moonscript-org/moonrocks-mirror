package = "catchify"
rockspec_format = "3.0"
version = "1.0.0-1"
source = {
	url = "git://github.com/stein197/lua-catchify",
	tag = "1.0.0",
	branch = "main"
}
description = {
	summary = "Tiny try-catch-finally implementation for Lua",
	detailed = [[
		Lua does not have a common syntax sugar to wrap the code that will possibly lead to errors. This package
		provides a very simple way to bring this sugar to Lua
	]],
	homepage = "https://github.com/stein197/lua-catchify",
	issues_url = "https://github.com/stein197/lua-catchify/issues",
	license = "MIT",
	maintainer = "Nail' Gafarov <nil20122013@gmail.com>",
	labels = {
		"try", "catch", "finally"
	}
}
dependencies = {
	"lua >= 5.3"
}
build = {
	type = "builtin",
	modules = {
		["catchify"] = "init.lua"
	}
}
