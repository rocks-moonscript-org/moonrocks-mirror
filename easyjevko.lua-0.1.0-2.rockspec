package = "easyjevko.lua"
version = "0.1.0-2"
source = {
	url = "git://github.com/jevko/easyjevko.lua.git"
}
description = {
	summary = "A library for Easy Jevko, a simple format built on Jevko.",
	detailed = [[
		Transforms Jevko to Lua values and back.
		
		Jevko is a minimal general-purpose syntax.
		
		See also: https://jevko.org
	]],
	homepage = "https://github.com/jevko/easyjevko.lua",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1",
  "jevko.lua >= 0.1.0"
}
build = {
	type = "builtin",
	modules = {
		easyjevko = "easyjevko.lua"
	}
}
