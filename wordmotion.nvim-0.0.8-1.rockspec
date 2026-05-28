rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.8-1"

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
	url = "https://github.com/neo451/jieba-lua/archive/b99bc5f83c5c1ee371485cf11cf77f4e7edd6617.zip",
	dir = "jieba-lua-b99bc5f83c5c1ee371485cf11cf77f4e7edd6617/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
