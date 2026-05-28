rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.2-1"

description = {
	summary = "simulate vim's word motion",
	detailed = "",
	license = "GPL-3.0",
	homepage = "https://github.com/Freed-Wu/jieba.nvim/tree/main/packages/wordmotion.nvim",
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
	url = "https://github.com/Freed-Wu/jieba.nvim/archive/f5a01d6030a1af23b46b7676bcac3d221898dccd.zip",
	dir = "jieba.nvim-f5a01d6030a1af23b46b7676bcac3d221898dccd/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
}
