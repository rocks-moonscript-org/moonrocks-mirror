rockspec_format = "3.0"
package = "rikai.nvim"
version = "0.0.3-3"

description = {
	summary = "Neovim plugin that helps with japanese translation",
	license = "GPL-2.0",
	maintainer = "teto",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua>=5.1",
	"lsqlite3==0.9.7",
	"mega.cmdparse==1.2.1",
	"luautf8==0.2.1",
	"mega.logging==1.1.6",
}

source = {
	url = "https://github.com/teto/rikai.nvim/archive/refs/tags/86474c0b9050486685b412383134003af4a17f8a.zip",
}

build = {
	type = "builtin",
}
