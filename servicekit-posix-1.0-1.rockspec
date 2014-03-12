package = "servicekit-posix"

version = "1.0-1"

description = {
	summary = "Long-lived daemons and/or services for Lua",
	detailed = [[
		ServiceKit provides a simple way to create background services
		("daemons") in Lua, with a platform-agnostic API. 
		
		This particular package is for Unix operating systems that
		are Posix compliant.
	]],
	
	license = "MIT/X11",
	homepage = "https://syn.zadzmo.org/servicekit"
}

source = {
	url = "https://syn.zadzmo.org/servicekit/downloads/servicekit-posix-1.0.tar.gz"
}

dependencies = {
	"lua >= 5.1", "luaposix >= 5.1.23"
}

build = {
	type = "builtin",
	modules = {
		["servicekit"] = "servicekit.lua",
		["servicekit.events"] = "servicekit/events.lua"
	}
}
