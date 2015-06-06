package = "fi-luajit"
version = "1.0"

source = {
	url = "git://github.com/nyfair/fi-luajit.git"
}

description = {
	summary = "FreeImage Luajit2 binding",
	homepage = "https://github.com/nyfair/fi-luajit"
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
	modules = {
		["fi"] = "fi.lua",
	}
}
