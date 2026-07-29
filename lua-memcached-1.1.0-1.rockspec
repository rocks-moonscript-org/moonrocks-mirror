rockspec_format = "3.0"
package = "lua-memcached"
version = "1.1.0-1"
description = {
	summary = "Lua binding and codec for memcached",
	detailed = [[
		Lua memcached provides a binding for memcached, a high-performance, distributed memory
		object caching system. The module is implemented in C using the binary protocol and
		includes a codec for encoding and decoding Lua values.
	]],
	license = "MIT",
	homepage = "https://github.com/anaef/lua-memcached",
	labels = { "cache" },
}
dependencies = {
	"lua >= 5.3, < 5.6"
}
external_dependencies = {
	MEMCACHED = {
		header = "memcached/protocol_binary.h"
	}
}
source = {
	url = "git+https://github.com/anaef/lua-memcached.git",
	tag = "v1.1.0",
}
build = {
	type = "builtin",
	modules = {
		memcached = {
			sources = {
				"src/memcached.c",
			},
			defines = {
				"_REENTRANT",
				"_GNU_SOURCE",
			},
			incdirs = {
				"$(MEMCACHED_INCDIR)",
			},
		},
	},
}
