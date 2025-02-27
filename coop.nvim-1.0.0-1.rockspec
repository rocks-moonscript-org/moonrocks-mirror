rockspec_format = "3.0"
package = "coop.nvim"
version = "1.0.0-1"

source = {
	url = "git+https://github.com/gregorias/coop.nvim",
}

description = {
	summary = "A Neovim plugin for structured concurrency with coroutines.",
	homepage = "https://github.com/gregorias/coop.nvim", -- We don't have one yet
	license = "GPL-3.0",
}

dependencies = {
	"lua >= 5.1",
}
