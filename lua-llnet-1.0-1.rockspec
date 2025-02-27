package = "lua-llnet"
version = "1.0-1"
source = {
	url = "git://github.com/Neopallium/lua-llnet.git",
  branch = "v1.0",
}
description = {
	summary = "Low-Level network for Lua",
	homepage = "http://github.com/Neopallium/lua-llnet",
	license = "MIT/X11",
}
dependencies = {
	"lua >= 5.1, < 5.5",
}
build = {
	type = "builtin",
	modules = {
		llnet = {
			sources = {
				"src/lsockaddr.c",
				"src/laddrinfo.c",
				"src/lsocket.c",
				"src/liobuffer.c",
				"src/pre_generated-llnet.nobj.c",
			},
		}
	}
}
