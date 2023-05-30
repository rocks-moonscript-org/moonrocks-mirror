---@diagnostic disable: lowercase-global

rockspec_format = "3.0"
package = "shexpand"
version = "1.0-1"
source = {
	url = "git+https://github.com/mskelton/shexpand.lua",
}
description = {
	summary = "Expand a string into a table of strings using shell brace expansion",
	homepage = "https://github.com/mskelton/shexpand.lua",
	license = "ISC",
	issues_url = "https://github.com/mskelton/shexpand.lua/issues",
	maintainer = "Mark Skelton",
}
dependencies = {
	"lua >= 5.1, < 5.5",
}
build = {
	type = "builtin",
	modules = {
		shexpand = "shexpand.lua",
	},
}
test_dependencies = {
	"luaunit >= 3.4, < 3.5",
}
