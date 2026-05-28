rockspec_format = "3.0"
package = "vim"
version = "0.0.11-1"

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
	url = "https://github.com/rimeinn/rime.nvim/archive/4f534c816d238206a0140f16b043194b3a7ed567.zip",
	dir = "rime.nvim-4f534c816d238206a0140f16b043194b3a7ed567/packages/vim",
}

build = {
	type = "builtin",
}
