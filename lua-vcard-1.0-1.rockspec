package = "lua-vcard"
version = "1.0-1"
source = {
	url = "git://github.com/prototux/lua-vcard",
	tag = "1.0-1"
}
description = {
	summary = "A simple vcard parser.",
	detailed = [[
		This is a simple vcard parser that (only) tokenize vcards, compatible with versions 2.1, 3.0 and 4.0.
	]],
	homepage = "https://github.com/prototux/lua-vcard",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"lpeg"
}

build = {
	type = "builtin",
	modules = {
		["vcard"] = "vcard.lua"
	}
}
