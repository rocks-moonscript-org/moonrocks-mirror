rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.1-1"

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
	url = "https://github.com/Freed-Wu/jieba.nvim/archive/4428d22dc12e1806cb415bb6aef0046f365c70cc.zip",
	dir = "jieba.nvim-4428d22dc12e1806cb415bb6aef0046f365c70cc/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
}
