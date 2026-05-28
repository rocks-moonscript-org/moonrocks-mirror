rockspec_format = "3.0"
package = "rjieba"
version = "0.0.3-1"

description = {
	summary = "lua binding for jieba-rs",
	detailed = "",
	license = "MIT",
	homepage = "https://github.com/neo451/jieba-lua/tree/master/packages/rjieba",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"wordmotion.nvim >= 0.0.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua >= 0.2.5",
}

source = {
	url = "https://github.com/neo451/jieba-lua/archive/a99955a7c475d302221a441d9e5869d864a0818c.zip",
	dir = "jieba-lua-a99955a7c475d302221a441d9e5869d864a0818c/packages/rjieba",
}

build = {
	type = "rust-mlua",
	modules = {
		rjieba = "rjieba",
	},
	install = {
		lua = {
			["rjieba.jieba"] = "lua/rjieba/jieba.lua",
		},
	},
	copy_directories = {
		"plugin",
		"scripts",
	},
}
