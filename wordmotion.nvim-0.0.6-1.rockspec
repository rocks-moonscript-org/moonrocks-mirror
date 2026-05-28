rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.6-1"

description = {
	summary = "simulate vim's word motion",
	detailed = "",
	license = "GPL-3.0",
	homepage = "https://github.com/neo451/jieba-lua/tree/master/packages/wordmotion.nvim",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"utf8 >= 0.0.1",
}

source = {
	url = "https://github.com/neo451/jieba-lua/archive/f05b62c88394f37f181b043680fa80487332c88a.zip",
	dir = "jieba-lua-f05b62c88394f37f181b043680fa80487332c88a/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
