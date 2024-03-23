package = "lua-custom-test"
version = "0.0-51"
source = {
	url = "git+https://github.com/Horryportier/lua-test.git",
	tag = "v0.0-51",
}
description = {
	summary = "testing framwork with custom errors",
	detailed = [[
   	lua-custom-test is testing framwork with ability to create 
	custom errors with nice formating 
   ]],
	homepage = "https://github.com/Horryportier/lua-test/",
	license = "MIT/X11",
}
dependencies = {
	"lua",
}
build = {
	type = "builtin",
	modules = {
		lua_custom_test = "lua_custom_test.lua",
		lib = "lib.lua",
		utils = "utils.lua",
		error = "error.lua",
		format = "format.lua",
		meta = "meta.lua",
	},
}
