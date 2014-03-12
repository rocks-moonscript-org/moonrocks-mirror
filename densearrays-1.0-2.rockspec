package = "densearrays"
version = "1.0-2"
source = {
	url = "http://luaforge.net/frs/download.php/4294/densearrays-1.0.tar.gz"
}
description = {
	summary = "A library for dense arrays of numbers or booleans",
	detailed = [[
		densearrays provides memory-efficient arrays for Lua.
		Arrays can contain numbers or boolean values, and
		can have up to eight dimensions.
		]],
	homepage = "http://luaforge.net/projects/densearrays/",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		array = "array.c"
	}
}
