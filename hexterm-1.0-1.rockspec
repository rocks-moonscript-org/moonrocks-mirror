---@diagnostic disable: lowercase-global

rockspec_format = "3.0"
package = "hexterm"
version = "1.0-1"
source = {
	url = "git+https://github.com/mskelton/hexterm.lua",
}
description = {
	summary = "Get the xterm closest color to a hexadecimal color",
	homepage = "https://github.com/mskelton/hexterm.lua",
	issues_url = "https://github.com/mskelton/hexterm.lua/issues",
	maintainer = "Mark Skelton",
	license = "ISC",
}
dependencies = {
	"lua >= 5.1, < 5.5",
}
test_dependencies = {
	"luaunit >= 3.4, < 3.5",
}
build = {
	type = "builtin",
	modules = {
		hexterm = "src/hexterm.lua",
		["hexterm.xterm-colors"] = "src/xterm-colors.lua",
	},
}
