rockspec_format = "3.0"
package = "lua-tz"
version = "1.0.0-1"
description = {
	summary = "Lua date and time functions with time zones",
	detailed = [[
		Lua TZ provides date and time functions with support for time zones. The
		core functions have an interface similar to the standard functions os.date
		and os.time, but additionally accept a time zone argument.
	]],
	license = "MIT",
	homepage = "https://github.com/anaef/lua-tz",
	labels = { "time" },
}
dependencies = {
	"lua >= 5.1"
}
source = {
	url = "git+https://github.com/anaef/lua-tz.git",
	tag = "1.0.0",
}
build = {
	type = "builtin",
	modules = {
		tz = {
			sources = {
				"src/tz.c",
			},
			defines = {
				"_REENTRANT",
				"_GNU_SOURCE",
			},
		},
	},
}
