rockspec_format = "3.0"
package = "ime.nvim"
version = "0.0.10-1"

description = {
	summary = "auto switch IME for neovim. \229\166\130\228\189\149\229\156\168 Vim \228\184\173\230\150\185\228\190\191\231\154\132\232\190\147\229\133\165\230\177\137\229\173\151\239\188\136CJKV characters\239\188\137",
	license = "GPL-3.0",
	homepage = "https://ime-nvim.readthedocs.io/",
	labels = {
		"fcitx5",
		"ibus",
		"lua",
		"neovim",
		"rime",
		"vim-plugin",
	},
}

dependencies = {
	"lua>=5.1",
	"dbus_proxy>=0.10.4",
	"lua-cjson",
	"luafilesystem",
	"ime>=0.0.4",
	"vim",
	"datafile",
	"platformdirs",
}

source = {
	url = "https://github.com/rimeinn/ime.nvim/archive/0.0.10.zip",
}

build = {
	type = "builtin",
	install = {
		conf = {
			["get_current_schema.js"] = "etc/conf/get_current_schema.js",
			["set_enabled.js"] = "etc/conf/set_enabled.js",
			["get_enabled.js"] = "etc/conf/get_enabled.js",
			["get-GI_TYPELIB_PATH.nix"] = "etc/conf/get-GI_TYPELIB_PATH.nix",
		},
	},
	copy_directories = {
		"plugin",
	},
}
