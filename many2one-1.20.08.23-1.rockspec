package = "many2one"
version = "1.20.08.23-1"
source = {
	url = "git://github.com/aryajur/many2one",
	tag = "1.20.08.23"
}
description = {
	summary = "Convert application spanning multiple Lua files to 1",
	detailed = [[
		This is a simple script that combines an application written spanning multiple Lua files into a single lua file for easy distribution and running.
	]],
	homepage = "http://milindsweb.amved.com/Many2One.html", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1",
	"submodsearcher >= 1",
	"tableutils >= 1.21",
	"luafilesystem >= 1.7",
	"diskop >= 1.21",
	"lualogging >= 1.5",
	"argparse >= 0.7"
}
build = {
	type = "builtin",
    install = {
        bin = {
            "../src/many2one.lua",
        },
    },
}
