package = "luagq"
version = "0.1-5"
source = {
	url = "https://bitbucket.org/senanetworksinc/luagq/raw/c545a7562e35469c87db7d25524dfdd77ad0cbcc/luagq-0.1-5.tar.gz",
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
