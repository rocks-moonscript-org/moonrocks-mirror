package = "jevko.lua"
version = "0.1.0-1"
source = {
	url = "git://github.com/jevko/jevko.lua.git"
}
description = {
	summary = "A single-file Jevko library for Lua.",
	detailed = [[
		Encodes and decodes plain Jevko.
		
		Jevko is a minimal general-purpose syntax.
		
		See also: https://jevko.org
		
		# Features

		* Simple
		* Lightweight: ~3 KiB, < 100 SLOC
		* Error messages with `line:column` information, e.g. `Invalid digraph (x) at 1:10!`
	]],
	homepage = "https://github.com/jevko/jevko.lua",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		jevko = "jevko.lua"
	}
}
