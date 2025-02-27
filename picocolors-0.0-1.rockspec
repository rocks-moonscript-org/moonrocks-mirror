package = "picocolors"
version = "0.0-1"

source = {
	url = "git://github.com/andresvalderrama/picocolors",
	tag = "v0.0.1",
}

description = {
	summary = "term colors",
	detailed = "",
	homepage = "https://github.com/andresvalderrama/picocolors",
}

build = {
	type = "builtin",
	modules = {
		picocolors = "src/init.lua",
	},
}
