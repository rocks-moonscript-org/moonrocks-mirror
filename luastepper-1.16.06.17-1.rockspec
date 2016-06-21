package = "LuaStepper"
version = "1.16.06.17-1"
source = {
	url = "git://github.com/aryajur/LuaStepper.git",
	tag = "1.16.06"
}
description = {
	summary = "Allow Lua scripts to run multiple Lua scripts in parallel, platform independent without using threading.",
	detailed = [[
		LuaStepper is a module to help lua programs control simultaneous execution of multiple Lua threads without them needing to be coroutines. So it is like pre-emptive multitasking but instead of the operating system controlling the task switch and time slicing the Lua parent process does that with the API of this module.
	]],
	homepage = "http://www.amved.com/milindsweb/LuaStepper.html", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		lstepper = "lstepper.lua",
		LuaStepper = "LuaStepper.c"
	}
}