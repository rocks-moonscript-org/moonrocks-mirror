package = "lua-mosquitto-v5"
version = "0.5.0-1"
source = {
	url = "git://github.com/niecore/lua-mosquitto-v5",
	tag = "v0.5.0"
}
description = {
	summary = "Lua bindings to libmosquitto",
	detailed = [[
		Lua bindings to the libmosquitto client library.
		The parameters to all functions are as per libmosquitto's api
		only with sensible defaults for optional values, and return
		values directly rather than via pointers.
	]],
	homepage = "https://github.com/niecore/lua-mosquitto-v5",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
external_dependencies = {
	LIBMOSQUITTO = {
		header = "mosquitto.h"
	}
}
build = {
	type = "builtin",
	modules = {
		mosquitto = {
			sources = { "lua-mosquitto.c" },
			defines = { "LUA_COMPAT_APIINTCASTS" },
			libraries = { "mosquitto" },
			incdirs = { "$LIBMOSQUITTO_INCDIR" },
			libdirs = { "$LIBMOSQUITTO_LIBDIR" },
		}
	}
}

