rockspec_format = "3.0"
package = "vim"
version = "0.0.9-1"

description = {
	summary = "use vim.fs, vim.filetype, vim.uri, ... outside of neovim",
	detailed = "See :help vim.XXX",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/rime.nvim/tree/main/packages/vim",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"luafilesystem >= 1.8.0",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/0d663cca71498c12f9b2b302457459b271177010.zip",
	dir = "rime.nvim-0d663cca71498c12f9b2b302457459b271177010/packages/vim",
}

build = {
	type = "builtin",
}
