rockspec_format = "3.0"
package = "taisei.nvim"
version = "0.0.1-1"

description = {
	summary = "A taisei progress file editor based on neovim.",
	detailed = "",
	license = "GPL-3.0",
	homepage = "https://github.com/Freed-Wu/pvz.nvim/tree/main/packages/taisei.nvim",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"pvz.nvim >= 0.0.1",
	"crc32 >= 0.0.1",
}

source = {
	url = "https://github.com/Freed-Wu/pvz.nvim/archive/1526a2f237ecbfbce00474f8b943da85a60772ff.zip",
	dir = "pvz.nvim-1526a2f237ecbfbce00474f8b943da85a60772ff/packages/taisei.nvim",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
