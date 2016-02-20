package = "luaproxy"
version = "1.1.4-1"
source = {
	url = "git://github.com/arcapos/luaproxy",
	tag = "1.1.4"
}
description = {
	summary = "A Lua proxy to access a Lua state from within another state",
	detailed = "Access a Lua state from within another state.",
	homepage = "http://github.com/arcapos/luaproxy",
	license = "3-clause BSD",
}
dependencies = {
	"lua >= 5.1, < 5.4",
}
build = {
	type = "builtin",
	modules = {
		proxy = {
			sources = "luaproxy.c"
		},
	},
}
