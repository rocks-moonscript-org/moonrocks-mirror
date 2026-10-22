rockspec_format = "3.0"
package = "hotty"
-- MAJOR.MINOR is the hotty version the SDK speaks (M.VERSION), and PATCH this
-- repository's own (gov P-5 rule 6); the revision after "-" is the rockspec's.
version = "0.5.0-1"
source = {
	url = "git+https://github.com/neuroplastio/hotty-lua.git",
	tag = "v0.5.0",
}
description = {
	summary = "The Lua SDK for hotty, HTML over the TTY, for Neovim plugins and plx scripts",
	detailed = [[
hotty-lua speaks hotty 0.5. require("hotty") is the wire layer: it builds
commands, decodes what the host sends, cuts hotty sequences out of a byte
stream, decides whether the terminal is a host, and names keys and keymaps,
with no I/O. require("hotty.nvim") and require("hotty.plx") are the SDK
layers for Neovim and for plx scripts.
]],
	homepage = "https://github.com/neuroplastio/hotty-lua",
	issues_url = "https://github.com/neuroplastio/hotty-lua/issues",
	license = "Apache-2.0",
	labels = { "terminal", "html", "neovim" },
}
-- Lua 5.1 and the standard library only: Neovim's LuaJIT, plain LuaJIT, PUC
-- Lua 5.1 and gopher-lua, as make check runs it.
dependencies = {
	"lua == 5.1",
}
build = {
	type = "builtin",
	modules = {
		["hotty"] = "lua/hotty/init.lua",
		["hotty.base64"] = "lua/hotty/base64.lua",
		["hotty.field"] = "lua/hotty/field.lua",
		["hotty.inflate"] = "lua/hotty/inflate.lua",
		["hotty.join"] = "lua/hotty/join.lua",
		["hotty.keys"] = "lua/hotty/keys.lua",
		["hotty.msgpack"] = "lua/hotty/msgpack.lua",
		["hotty.nvim"] = "lua/hotty/nvim.lua",
		["hotty.plx"] = "lua/hotty/plx.lua",
		["hotty.utf8"] = "lua/hotty/utf8.lua",
	},
}
