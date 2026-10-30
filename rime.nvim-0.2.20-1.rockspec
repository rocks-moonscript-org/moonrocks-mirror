rockspec_format = "3.0"
package = "rime.nvim"
version = "0.2.20-1"

description = {
	summary = "\227\132\147 rime for neovim \238\159\133",
	license = "GPL-3.0",
	homepage = "https://rime-nvim.readthedocs.io/",
	labels = {
		"lua",
		"neovim",
		"rime",
		"vim",
		"xmake",
	},
}

dependencies = {
	"lua>=5.1",
	"ime>=0.0.8",
	"platformdirs",
	"lua-cjson",
	"datafile",
}

build_dependencies = {
	"luanativeobjects",
	"luarocks-build-xmake",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/0.2.20.zip",
}

build = {
	type = "xmake",
	install = {
		conf = {
			["modifiers.json"] = "etc/conf/modifiers.json",
			["keys.json"] = "etc/conf/keys.json",
		},
		bin = {
			rime = "bin/rime",
		},
	},
	copy_directories = {
		"after",
	},
}
