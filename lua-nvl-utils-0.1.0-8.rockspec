rockspec_format = "3.0"
package = "lua-nvl-utils"
version = "0.1.0-8"
source = {
	url = "https://github.com/shborg-lua/lua-nvl-utils/archive/refs/tags/" .. version .. ".zip",
}
description = {
	summary = "A library for Lua and Neovim",
	detailed = "`nvl.utils` is a utils library",
	homepage = "http://github.com/shborg-lua/nvl.utils",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		["nvl.utils"] = "lua/nvl/utils/init.lua",
		["nvl.utils.config"] = "lua/nvl/utils/config.lua",
		["nvl.utils.modules.deepcopy"] = "lua/nvl/utils/modules/deepcopy.lua",
		["nvl.utils.modules.string"] = "lua/nvl/utils/modules/string.lua",
		["nvl.utils.modules.table"] = "lua/nvl/utils/modules/table.lua",
		["nvl.utils.modules.types"] = "lua/nvl/utils/modules/types.lua",
	},
	copy_directories = {},
	platforms = {},
}
test_dependencies = {
	"busted",
	"busted-htest",
	"nlua",
	"luacov",
	"luacov-html",
	"luacov-multiple",
	"luacov-console",
	"luafilesystem",
}
test = {
	type = "busted",
}
