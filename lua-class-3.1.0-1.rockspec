rockspec_format = "3.0"
package = "lua-class"
version = "3.1.0-1"
source = {
	url = "git+https://github.com/stein197/lua-class"
}
description = {
	summary = "Lua OOP functionality support",
	homepage = "https://github.com/stein197/lua-class",
	labels = {
		"class", "inheritance", "namespace", "oop", "object"
	},
	maintainer = "stein197 <nil20122013@gmail.com>"
}
build = {
	type = "builtin",
	modules = {
		"src/class.lua"
	}
}
