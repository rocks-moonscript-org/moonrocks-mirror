---@diagnostic disable: lowercase-global

rockspec_format = "3.0"
package = "hexterm"
version = "1.0-2"
source = {
	url = "git+https://github.com/mskelton/hexterm.lua",
}
description = {
	summary = "Get the xterm closest color to a hexadecimal color",
	homepage = "https://github.com/mskelton/hexterm.lua",
	license = "ISC",
	issues_url = "https://github.com/mskelton/hexterm.lua/issues",
	maintainer = "Mark Skelton",
}
dependencies = {
	"lua >= 5.1, < 5.5",
}
build = {
	type = "builtin",
	modules = {
		hexterm = "hexterm.lua",
	},
}
test_dependencies = {
	"luaunit >= 3.4, < 3.5",
}
