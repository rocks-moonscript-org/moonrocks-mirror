rockspec_format = "3.0"
package = "rikai.nvim"
version = "0.0.3-4"

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
	"luautf8==0.2.1",
	"mega.logging==1.1.6",
	"mega.cmdparse==1.2.1",
}

source = {
	url = "https://github.com/teto/rikai.nvim/archive/refs/tags/04e5047656dc33579b731e33c477785b1138cd57.zip",
}

build = {
	type = "builtin",
}
