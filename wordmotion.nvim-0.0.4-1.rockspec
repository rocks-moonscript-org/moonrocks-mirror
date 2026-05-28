rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.4-1"

description = {
	summary = "simulate vim's word motion",
	detailed = "",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/jieba.nvim/tree/main/packages/wordmotion.nvim",
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
	url = "https://github.com/rimeinn/jieba.nvim/archive/1a90ae6faf463e0b031bcd8e43d96fa7c2047899.zip",
	dir = "jieba.nvim-1a90ae6faf463e0b031bcd8e43d96fa7c2047899/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
}
