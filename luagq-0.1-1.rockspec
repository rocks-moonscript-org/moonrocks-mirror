package = "luagq"
version = "0.1-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/luagq/raw/66055a082bd80f92736ad69415a79b4455f1bd8b/luagq-0.1-1.tar.gz",
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
