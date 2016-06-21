package = "many2one"
version = "1.14.11.12-2"
source = {
	url = "git://github.com/aryajur/many2one",
	tag = "1.14.11"
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
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		many2one = "src/many2one.lua"
	},
    install = {
        bin = {
            "many2one.lua",
        },
    },
}
