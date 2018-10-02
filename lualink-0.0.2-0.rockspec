package = "lualink"
version = "0.0.2-0"

source = {
	url = "git+https://github.com/adraenwan/lualink",
	branch = "luarocks",
	tag = "v0.0.2",
}

description = {
	summary = "A linker for lua code.",
	detailed = "lualink puts all your dependencies inside one file, so that you can embed it easily.",
	homepage = "https://github.com/adraenwan/lualink",
	license = "MIT",
	maintainer = "Adraenwan",
}

dependencies = {
	"lua >= 5.1, < 5.4",
}

build = {
	type = "none",
	install = {
		bin = {
			lualink = "lualink.lua",
		},
	},
}
