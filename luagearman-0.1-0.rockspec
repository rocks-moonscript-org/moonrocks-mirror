package = "luagearman"
version = "0.1-0"
source = {
	url = "https://bitbucket.org/senanetworksinc/luagearman/raw/50f0205fd758e62bfda3e8131aadc455c3f8c264/luagearman-0.1-0.tar.gz",
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
