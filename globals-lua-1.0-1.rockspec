package = "globals-lua"
version = "1.0-1"

description = {
	summary = "A very simple static analyzer for Lua",
	detailed = 
		"This is a very simple Lua program that list reports global variable usage "..
		"in Lua files, based on static analysis. \n\n"..
		"It uses 'luac', the Lua compiler, and parses the bytecode listing. "..
		"No other dependencies. Works with both Lua 5.1 and 5.2.",
	homepage = "https://github.com/hjelmeland/globals",
	license = "MIT/X11"
}

dependencies = {
	"lua >= 5.1",
}

source = {
	url = "git://github.com/hjelmeland/globals.git",
	tag = "master",
}

build = {
	type = "builtin",
	modules = {
	},
	install = {
		bin = {
			["globals.lua"] = "globals.lua"
		}
	}
}
