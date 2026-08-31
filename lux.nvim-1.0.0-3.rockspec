rockspec_format = "3.0"
package = "lux.nvim"
version = "1.0.0-3"

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
	"fzy==1.0.3",
	"pathlib.nvim==2.2.3",
	"rtp.nvim==1.2.0",
	"fallo==2.2.0",
	"mega.cmdparse==1.2.1",
	"nvim-nio==1.10.1",
	"fidget.nvim==1.6.0",
	"lux-lua==0.43.1",
	"lux-lsp==0.43.1",
}

build_dependencies = {
	"mega.vimdoc==1.2.0",
}

source = {
	url = "git+https://github.com/lumen-oss/rocks.nvim",
	tag = "push-owknuqmrxzkx",
}

build = {
	type = "builtin",
	copy_directories = {
		"doc",
		"plugin",
	},
}
