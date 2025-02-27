package = "lutest"
version = "0.0-2"
source = {
	url = "git://github.com/andresvalderrama/lutest",
	tag = "v0.2",
}
description = {
	summary = "basic lua test lib",
	detailed = "",
}
dependencies = {
	"lua >= 5.4",
}
build = {
	type = "builtin",
	modules = {
		init = "init.lua",
	},
}
