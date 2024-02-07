package = "lotus"
version = "1.0-3"
source = {
	url = "git://github.com/lotus-shell/lotus-api",
}
description = {
	homepage = "https://github.com/lotus-shell/lotus-api",
	license = "MIT",
}
build = {
	type = "builtin",
	modules = {
		["lotus"] = "init.lua",
	},
}
