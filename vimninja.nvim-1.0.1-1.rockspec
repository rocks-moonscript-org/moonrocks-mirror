rockspec_format = "3.1"
package = "vimninja.nvim"
version = "1.0.1-1"

description = {
	summary = "A Vim coach for Neovim that spots slow habits as you edit and shows the faster way",
	detailed = [[
Watches how you edit with vim.on_key (it never maps a key) and, when you pause after something slow,
shows the faster way and the free lesson that teaches it. Plus a daily review, the free lessons and
Vim golf, played in a tab of your own Neovim.]],
	license = "MIT (the course content in data/ is all rights reserved, see data/LICENSE)",
	homepage = "https://www.vimninja.com/neovim",
	labels = {
		"neovim",
		"vim",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/jaipandya/vimninja.nvim/archive/v1.0.1.zip",
}

build = {
	type = "builtin",
	copy_directories = {
		"doc",
		"plugin",
		"data",
	},
}
