rockspec_format = "3.0"
package = "wordmotion.nvim"
version = "0.0.10-1"

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
	"lua>=5.1",
	"utf8>=0.0.1",
}

source = {
	url = "https://github.com/neo451/jieba-lua/archive/8d0146fdfbe9e250b0b9a215541b840b9b206be9.zip",
	dir = "jieba-lua-8d0146fdfbe9e250b0b9a215541b840b9b206be9/packages/wordmotion.nvim",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
