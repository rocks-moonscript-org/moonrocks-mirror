package = "luavcard"
version = "0.1"
source = {
	url = "https://github.com/prototux/lua-vcard/archive/0.1.tar.gz",
	md5 = "c4954a6c9a3a9bf7b05562fab78a8f73",
}
description = {
	summary = "A simple vcard parser.",
	detailed = [[
		This is a simple vcard parser,
		It doesn't (yet) check against the RFC,
		It just tokenize the vcard for now.
	]],
	homepage = "https://github.com/prototux/lua-vcard",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"lpeg"
}

build = {
	type = "none",
	install = {
		lua = {
			"vcard.lua"
		}
	}
}
