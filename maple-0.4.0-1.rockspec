rockspec_format = "3.0"
package = "maple"
version = "0.4.0-1"
source = {
	url = "git+https://gitlab.com/seven88/maple.git",
	tag = "0.4.0",
}
description = {
	summary = "Maple is a simple, yet extensible logging library",
	detailed = [[
		Maple is designed to be a simple yet extensible logging library for
		Lua. It is inspired by WinstonJS, and thus, shares many of the same
		features, while being Lua-ified.
	]],
	homepage = "https://gitlab.com/seven88/maple",
	issues_url = "https://gitlab.com/seven88/maple/-/issues",
	license = "MIT",
	labels = { "logs" },
}
build = {
	type = "builtin",
	modules = {
		["maple.classes.Logger"] = "src/maple/classes/Logger.lua",
		["maple.formatters.colors"] = "src/maple/formatters/colors.lua",
		["maple.formatters.meta"] = "src/maple/formatters/meta.lua",
		["maple.formatters.simple"] = "src/maple/formatters/simple.lua",
		["maple.formatters.stacktrace"] = "src/maple/formatters/stacktrace.lua",
		["maple.formatters.timestamp"] = "src/maple/formatters/timestamp.lua",
		["maple.formatters.uncolor"] = "src/maple/formatters/uncolor.lua",
		["maple.transports.console"] = "src/maple/transports/console.lua",
		["maple.transports.file"] = "src/maple/transports/file.lua",
		["maple.config"] = "src/maple/config.lua",
		["maple"] = "src/maple/init.lua",
	},
}
