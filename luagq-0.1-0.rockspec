package = "luagq"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luagq/raw/7ca40d372c0efcf11ca1316e79a18e388e8ed075/luagq-0.1-0.tar.gz",
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
	"penlight"
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
