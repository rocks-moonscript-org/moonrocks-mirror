rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.5-1"

description = {
	summary = "simulate vim's word motion",
	detailed = "",
	license = "GPL-3.0",
	homepage = "https://github.com/neo451/jieba.nvim/tree/main/packages/wordmotion.nvim",
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
	url = "https://github.com/neo451/jieba.nvim/archive/5.6.0.zip",
	dir = "jieba.nvim-5.6.0/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
}
