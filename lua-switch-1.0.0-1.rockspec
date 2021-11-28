package = "lua-switch"
rockspec_format = "3.0"
version = "1.0.0-1"
source = {
	url = "git://github.com/stein197/lua-switch",
	tag = "1.0.0",
	branch = "main"
}
description = {
	summary = "Switch expression statement for Lua",
	detailed = [[
		This package provides simple function named "switch" which could be used to emulate switch statement which does
		not exist in Lua but does in other languages. It also can handle default fallback.
	]],
	homepage = "https://github.com/stein197/lua-switch",
	issues_url = "https://github.com/stein197/lua-switch/issues",
	license = "MIT",
	maintainer = "Nail' Gafarov <nil20122013@gmail.com>",
	labels = {
		"switch"
	}
}
dependencies = {
	"lua >= 5.3"
}
build = {
	type = "builtin",
	modules = {
		["lua-switch"] = "init.lua"
	}
}
