package = "collections"
version = "1.0.0-5"
source = {
	url = "git://github.com/ClockVapor/collections"
}
description = {
	summary = "Provides basic collection classes for Lua",
	homepage = "https://github.com/ClockVapor/collections",
	license = "MIT"
}
build = {
	type = "builtin",
	modules = {
		collection = "src/collection.lua",
		array_list = "src/array_list.lua",
		set = "src/set.lua",
		["util.class"] = "src/util/class.lua"
	}
}
