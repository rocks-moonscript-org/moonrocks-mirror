package = "robotstxt"

version = "1.1-1"

description = {
	summary = "Robots.txt parser / rule evaluator",
	detailed = [[
		Robotstxt provides a Lua/LPEG based robots.txt file parser and
		rule evaluator. Basic workflow is to load via a file or IO 
		handle, then set a user agent, then check if given URLs are
		allowed or denied.
	]],
	
	license = "MIT/X11",
	homepage = "https://zadzmo.org/code/daemonparts"
}

source = {
	url = "https://zadzmo.org/code/robotstxt/downloads/robotstxt-1.1.tar.gz"
}

dependencies = {
	"lua >= 5.4, < 5.5",
	"lpeg"
}

build = {
	type = "builtin",
	modules = {
		["robotstxt"] = "robotstxt.lua"
	}
}

