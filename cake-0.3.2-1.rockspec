package = "cake"
version = "0.3.2-1"
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
	},
	copy_directories = { "lib" },
}
dependencies = {
	"lua >= 5.1",
	"lua-term == 0.7-1",
}
