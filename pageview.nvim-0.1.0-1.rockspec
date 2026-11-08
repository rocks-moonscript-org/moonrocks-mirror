rockspec_format = "3.0"
package = "pageview.nvim"
version = "0.1.0-1"

description = {
	summary = "Toggle Markdown between raw text and a browser-rendered page inside Neovim",
	license = "MIT",
	homepage = "https://github.com/cocozzang/pageview.nvim",
	labels = {
		"ghostty",
		"kitty",
		"markdown",
		"neovim",
		"neovim-plugin",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/cocozzang/pageview.nvim/archive/v0.1.0.zip",
}

build = {
	type = "builtin",
	copy_directories = {
		"doc",
		"plugin",
		"assets",
	},
}
