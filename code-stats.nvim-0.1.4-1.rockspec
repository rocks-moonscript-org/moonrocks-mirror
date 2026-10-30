rockspec_format = "3.0"
package = "code-stats.nvim"
version = "0.1.4-1"

description = {
	summary = "Code::Stats plugin for Neovim",
	license = "GPL-3.0",
	homepage = "https://code-stats-nvim.readthedocs.io/",
	labels = {
		"code-stats",
		"lua",
		"neovim",
		"vim",
	},
}

dependencies = {
	"lua>=5.1",
	"lua-requests-temp",
	"lua-dotenv",
	"datafile",
}

source = {
	url = "https://github.com/Freed-Wu/code-stats.nvim/archive/0.1.4.zip",
}

build = {
	type = "builtin",
	install = {
		conf = {
			["filetype.json"] = "etc/conf/filetype.json",
		},
	},
}
