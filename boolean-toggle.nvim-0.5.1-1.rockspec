rockspec_format = "3.0"
package = "boolean-toggle.nvim"
version = "0.5.1-1"

description = {
	summary = "Toggle between boolean values under your cursor.",
	detailed = "Toggle between boolean values under your cursor.",
	license = "GPLv2",
	homepage = "https://github.com/DrKJeff16/boolean-toggle.nvim",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/DrKJeff16/boolean-toggle.nvim/archive/405640a52666720cd0c4463e9fa0f2e13e9fc198.zip",
}

build = {
	type = "builtin",
	copy_directories = {
		"plugin",
	},
}
