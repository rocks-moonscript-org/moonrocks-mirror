rockspec_format = "3.0"
package = "mega.argparse"
version = "0.0.7-1"

description = {
	summary = "A library to wrap argparse and mega.cmdparse",
	detailed = "create both argparse.Parser and mega.cmdparse.Parser at the same code",
	license = "GPL-3.0",
	homepage = "https://github.com/Freed-Wu/git2.nvim/tree/main/packages/mega.argparse",
	maintainer = "Wu",
	labels = {
		"argparse",
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"mega.cmdparse >= 1.2.1",
	"argparse >= 0.0.1",
}

source = {
	url = "https://github.com/Freed-Wu/git2.nvim/archive/07cff1ea558242fb1f498c29391342a218cccaa7.zip",
	dir = "git2.nvim-07cff1ea558242fb1f498c29391342a218cccaa7/packages/mega.argparse",
}

build = {
	type = "builtin",
}
