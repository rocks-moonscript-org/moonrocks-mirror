rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.7-1"

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
	url = "https://github.com/neo451/jieba-lua/archive/cb5eb1b75d28400c3ca38bfc205764beff946ee8.zip",
	dir = "jieba-lua-cb5eb1b75d28400c3ca38bfc205764beff946ee8/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
