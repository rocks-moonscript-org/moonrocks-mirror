package = "cake"
version = "0.3.4-1"
source = {
	url = "git+ssh://git@github.com/0snilcy/lua-cake.git",
}
description = {
	homepage = "https://github.com/0snilcy/lua-cake",
	license = "MIT/X11",
}
build = {
	type = "builtin",
	modules = {
		["cake"] = "lib/init.lua",
		["cake.string"] = "lib/string.lua",
		["cake.class"] = "lib/class.lua",
		["cake.utils"] = "lib/utils.lua",
		["cake.test"] = "lib/test.lua",
		["cake.type"] = "lib/type.lua",
		["cake.table"] = "lib/table.lua",
		["cake.print"] = "lib/print.lua",
	},
}
dependencies = {
	"lua >= 5.1",
	"lua-term == 0.7-1",
}
