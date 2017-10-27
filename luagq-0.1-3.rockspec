package = "luagq"
version = "0.1-3"
source = {
	url = "https://bitbucket.org/senanetworksinc/luagq/raw/08ea5bf3d2e1b57d4785143dd6c6d280ac9950f6/luagq-0.1-3.tar.gz",
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
