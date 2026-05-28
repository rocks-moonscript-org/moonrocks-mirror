rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.3-1"

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
	url = "https://github.com/Freed-Wu/jieba.nvim/archive/a782db5ba8de452d8e7d5598a640fc76575909a5.zip",
	dir = "jieba.nvim-a782db5ba8de452d8e7d5598a640fc76575909a5/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
}
