rockspec_format = "3.0"
package = "ime"
version = "0.0.10-1"

description = {
	summary = "A library related to input method engine for neovim",
	detailed = "rime.nvim, fcitx5-ui.nvim and ime.nvim depend on it",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/rime.nvim/tree/main/packages/ime",
	maintainer = "Wu",
	labels = {
		"neovim",
		"ime",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/94baf1bcd50082f2f5710aba4fe54aeee664c2fb.zip",
	dir = "rime.nvim-94baf1bcd50082f2f5710aba4fe54aeee664c2fb/packages/ime",
}

build = {
	type = "builtin",
}
