package = "lua-mosquitto-v52"
version = "0.5.1-1"
source = {
	url = "git://github.com/topogibra/lua-mosquitto-v52",
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
	homepage = "https://github.com/topogibra/lua-mosquitto-v52",
	license = "MIT"
}
dependencies = {
	"lua >= 5.2"
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

