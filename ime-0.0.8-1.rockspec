rockspec_format = "3.0"
package = "ime"
version = "0.0.8-1"

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
	url = "https://github.com/rimeinn/rime.nvim/archive/9e3f3988374ca12237f4247e257da79d78c9cd29.zip",
	dir = "rime.nvim-9e3f3988374ca12237f4247e257da79d78c9cd29/packages/ime",
}

build = {
	type = "builtin",
}
