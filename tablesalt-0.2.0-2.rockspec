package = "TableSalt"
version = "0.2.0-2"

source = {
	url = "git://github.com/FourierTransformer/TableSalt.git",
	tag = "0.2.0"
}

description = {
	summary = "A Constraint Satisfaction Framework Written in Lua",
	detailed = [[
   TableSalt is a fast, fairly easy to use, constraint satisfaction framework
   written in lua. It is designed to avoid having to convert everything to
   fancy math and allows for custom constraints to be written.
  ]],
	homepage = "https://github.com/FourierTransformer/TableSalt",
	maintainer = "Shakil Thakur <shakil.thakur@gmail.com>",
	license = "MIT"
}

dependencies = {
	"lua >= 5.1, <5.3",
}

build = {
	type = "builtin",
	modules = {
		["TableSalt"] = "TableSalt.lua",
		["tsalt.peaque"] = "util/Peaque.lua",
		["tsalt.util"] = "util/util.lua",
	},
}
