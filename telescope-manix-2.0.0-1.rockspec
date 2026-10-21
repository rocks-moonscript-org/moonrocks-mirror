rockspec_format = "3.0"
package = "telescope-manix"
version = "2.0.0-1"

description = {
	summary = "A telescope.nvim extension for Manix - A fast documentation searcher for Nix",
	detailed = [[
Manix is a fast documentation searcher for nix.
This plugin provides a telescope.nvim extension for manix.]],
	license = "GPL-2.0",
	homepage = "https://github.com/mrcjkb/telescope-manix",
	labels = {
		"neovim",
		"neovim-plugin",
		"nix",
		"nixos",
		"telescope",
	},
}

dependencies = {
	"lua>=5.1",
	"telescope.nvim==scm",
}

source = {
	url = "https://github.com/mrcjkb/telescope-manix/archive/2.0.0.zip",
}

build = {
	type = "builtin",
	copy_directories = {
		"doc",
	},
}
