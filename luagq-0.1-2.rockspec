package = "luagq"
version = "0.1-2"
source = {
	url = "https://bitbucket.org/senanetworksinc/luagq/raw/f908b774e25798343171c82ef83039011ad94fa1/luagq-0.1-2.tar.gz",
}
description = {
	summary = "luagq",
	detailed = [[
		[GQ](https://github.com/TechnikEmpire/GQ) wrapped library.
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luagq",
	license = "MIT/X11"
}
dependencies = {
	"penlight",
	"boost >= 1.64.0"
}
build = {
	type = "make",
	modules = {
	},
	install = {
		lua = {
			["luagq.bridge"] = "luagq/bridge.lua",
			["luagq.document"] = "luagq/document.lua",
			["luagq.node"] = "luagq/node.lua",
			["luagq.selection"] = "luagq/selection.lua",
			["luagq.version"] = "luagq/version.lua",
		},
	},
	build = {
		makefile = "Makefile",
	}
}
