rockspec_format = "3.0"
package = "lux.nvim"
version = "1.0.0-1"

description = {
	summary = "\240\159\140\146 Neovim plugin management inspired by Cargo, powered by lux",
	license = "GPL-3.0",
	labels = {
		"lua",
		"lux",
		"neovim",
		"neovim-plugin",
		"nvim",
		"package-manager",
		"plugin",
		"plugin-manager",
	},
}

dependencies = {
	"lua==5.1",
	"lux-lsp==0.40.0",
	"rtp.nvim==1.2.0",
	"fidget.nvim==1.6.0",
	"pathlib.nvim==2.2.3",
	"fzy==1.0.3",
	"fallo==2.2.0",
	"lux-lua==0.40.1",
	"nvim-nio==1.10.1",
	"mega.cmdparse==1.2.1",
}

build_dependencies = {
	"mega.vimdoc==1.2.0",
}

source = {
	url = "git+https://github.com/lumen-oss/rocks.nvim",
	tag = "270112d77e797bd809076ae3eb4c524add4c70c4",
}

build = {
	type = "builtin",
	copy_directories = {
		"doc",
		"plugin",
	},
}
