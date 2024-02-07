package = "lotus"
version = "1.0-1"
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
		api = "api.lua",
	},
}
