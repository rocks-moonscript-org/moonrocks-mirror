rockspec_format = "3.0"
package = "rjieba"
version = "0.0.1-1"

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
	url = "https://github.com/neo451/jieba-lua/archive/25ba531f97871c1048e7686d15681e01ff1fbaa1.zip",
	dir = "jieba-lua-25ba531f97871c1048e7686d15681e01ff1fbaa1/packages/rjieba",
}

build = {
	type = "rust-mlua",
	modules = {
		rjieba = "rjieba",
	},
	copy_directories = {
		"plugin",
	},
}
