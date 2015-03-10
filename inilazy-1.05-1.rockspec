package = "inilazy"
version = "1.05-1"

source = {
	url = "http://files.luaforge.net/releases/inilazy/inilazy/1.05/inilazy.lua",
}

description = {
	summary = "Simple, lazy implementation for quick read ini-files into lua-tables.",
	detailed = "Simple, lazy implementation for quick read ini-files into lua-tables.",
	homepage = "http://luaforge.net/projects/inilazy/",
	license = "Public Domain",
	maintainer = "Leikina", 
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
	modules = {
		["inilazy"] = "inilazy.lua",
	}
}

