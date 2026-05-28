rockspec_format = "3.0"
package = "vim"
version = "0.0.10-1"

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
	url = "https://github.com/rimeinn/rime.nvim/archive/dc7bd92d68b2ccb4dffc4ceb1f8d59ff29ecf663.zip",
	dir = "rime.nvim-dc7bd92d68b2ccb4dffc4ceb1f8d59ff29ecf663/packages/vim",
}

build = {
	type = "builtin",
}
