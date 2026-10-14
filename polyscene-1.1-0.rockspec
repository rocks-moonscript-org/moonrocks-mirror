package = "polyscene"
version = "1.1-0"
source = {
	url = "git://github.com/little-meow-meow/polyscene.git",
    tag = "v1.1.0"
}
description = {
	summary = "A CLI tool for transcluding Polytoria worlds",
	detailed = [[
		A Godot-like scene system for adding to and removing from a Polytoria .poly world file.
	]],
	homepage = "http://github.com/little-meow-meow/polyscene",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1",
    "argparse >= 0.7.1-1",
    "json.lua >= 0.1.3",
    "lua-zstd >= 0.2.0-1",
}
external_dependencies = {}
build = {
	type = "builtin",
    modules = {
        ["polyscene"] = "polyscene.lua",
    },
	install = {
        bin = {
            ["polyscene"] = "polyscene.lua"
        }
	}
}
