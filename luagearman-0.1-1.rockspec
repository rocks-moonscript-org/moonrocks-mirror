package = "luagearman"
version = "0.1-1"
source = {
	url = "https://bitbucket.org/senanetworksinc/luagearman/raw/9e9c3d35ca3d517813c746d466477134281bd3cd/luagearman-0.1-1.tar.gz",
}
description = {
	summary = "luagearman",
	detailed = [[
		[Gearman](http://gearman.org/) wrapped library.
	]],
	homepage = "https://bitbucket.org/senanetworksinc/luagearman",
	license = "MIT/X11"
}
dependencies = {
}
build = {
	type = "builtin",
	modules = {
	},
	install = {
		lua = {
			["luagearman.argment"] = "luagearman/argment.lua",
			["luagearman.client"] = "luagearman/client.lua",
			["luagearman.gearman"] = "luagearman/gearman.lua",
			["luagearman.worker"] = "luagearman/worker.lua",
		},
	},
}
