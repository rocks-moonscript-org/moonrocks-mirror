rockspec_format = "3.0"
package = "lua-xjson"
version = "0.9.0-1"
description = {
	summary = "Fast JSON encoding and decoding for Lua",
	detailed = [[
		Lua xjson provides fast JSON encoding and decoding with clear array and object semantics,
		selected and ordered object properties, and direct file input and output.
	]],
	license = "MIT",
	homepage = "https://github.com/anaef/lua-xjson",
	labels = { "json" },
}
dependencies = {
	"lua >= 5.4, < 5.6"
}
source = {
	url = "git+https://github.com/anaef/lua-xjson.git",
	tag = "v0.9.0",
}
build = {
	type = "builtin",
	modules = {
		xjson = {
			sources = {
				"src/xjson.c",
				"src/xjson_decode.c",
				"src/xjson_encode.c",
				"src/xjson_number.c",
			},
			defines = {
				"_REENTRANT",
				"_GNU_SOURCE",
			},
			libraries = {
				"m",
			},
		},
	},
	platforms = {
		linux = {
			type = "make",
			build_variables = {
				CFLAGS = "-fPIC -O3 -D_REENTRANT -D_GNU_SOURCE",
				LUA_INCDIR = "$(LUA_INCDIR)",
			},
			install_variables = {
				LIBDIR = "$(LIBDIR)",
			},
		}
	},
}
