rockspec_format = "3.0"
package = "rjieba"
version = "0.0.2-1"

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
	url = "https://github.com/neo451/jieba-lua/archive/609007f81b707710572d54123c5223bcc5ca9848.zip",
	dir = "jieba-lua-609007f81b707710572d54123c5223bcc5ca9848/packages/rjieba",
}

build = {
	type = "rust-mlua",
	modules = {
		rjieba = "rjieba",
	},
	copy_directories = {
		"plugin",
		"scripts",
	},
}
