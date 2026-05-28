package = "bundle.lua"
version = "0.1-1"
source = {
	url = "git+ssh://git@github.com/tokyob0t/bundle.lua.git",
}
description = {
	detailed = "Just copy the file `bundle.lua` inside the repo into your project.",
}

build = {
	type = "builtin",
	modules = {
		["bundle.init"] = "bundle/init.lua",
		["bundle.animal-hash"] = "bundle/animal-hash.lua",
		["bundle.cmd-parse"] = "bundle/cmd-parse.lua",
		["bundle.path"] = "bundle/path.lua",
	},
	install = { bin = { ["bundle-lua"] = "bin/init.lua" } },
}
