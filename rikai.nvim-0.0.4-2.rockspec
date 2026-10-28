rockspec_format = "3.0"
package = "rikai.nvim"
version = "0.0.4-2"

description = {
	summary = "Neovim plugin that helps with japanese translation",
	license = "GPL-2.0",
	maintainer = "teto",
	labels = {
		"neovim",
		"japanese",
	},
}

dependencies = {
	"lua>=5.1",
	"lsqlite3==0.9.7",
	"mega.cmdparse==1.2.1",
	"mega.logging==1.1.6",
	"luautf8==0.2.1",
}

source = {
	url = "https://github.com/teto/rikai.nvim/archive/refs/tags/0.0.4.zip",
}

build = {
	type = "builtin",
}
