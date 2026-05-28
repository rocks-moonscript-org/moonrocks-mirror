rockspec_format = "3.0"
package = "roda"
version = "1.0.3-1"

description = {
	summary = "Elegant terminal spinners for Lua",
	detailed = "Roda (Portuguese for 'wheel') is a pure Lua terminal spinner library that provides elegant visual feedback for CLI applications. Features include multiple spinner styles, colorized output, and convenient methods for success/failure/warning states. Inspired by sindresorhus/ora.",
	license = "EUPL-1.2",
	homepage = "https://github.com/tkolleh/roda.lua",
	issues_url = "https://github.com/tkolleh/roda.lua/issues",
	maintainer = "TJ Kolleh",
	labels = {
		"terminal",
		"spinner",
		"cli",
		"ansi",
		"progress",
		"neovim",
	},
}

dependencies = {
	"lua>=5.1",
	"luafilesystem>=1.8",
	"luasystem>=0.4.0",
}

source = {
	url = "https://github.com/tkolleh/roda.lua/archive/refs/tags/v1.0.3.zip",
}

build = {
	type = "builtin",
	install = {
		lua = {
			["roda.ansi"] = "lua/roda/ansi.lua",
			["roda.symbols"] = "lua/roda/symbols.lua",
			roda = "lua/roda/init.lua",
			["roda.spinners"] = "lua/roda/spinners.lua",
		},
	},
}
