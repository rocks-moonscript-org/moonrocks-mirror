package = "lua-input"
version = "0.0-2"
source = {
	url = "git://github.com/max1220/lua-input",
	tag = "0.0-2"
}
description = {
	summary = "Library for using the Linux input/uinput subsystem",
	detailed = [[
		Library for using the Linux input/uinput subsystem to
		read input events or create input events.
		This allows reading keyboard/mouse/touchscreen events,
		and emulating those devices as well.
	]],
	homepage = "http://github.com/max1220/lua-input",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		input = {
			sources = {"src/input.c"},
			defines = {
				"LUAROCK_PACKAGE_VERSION=\""..version.."\"",
				"LUAROCK_PACKAGE_NAME=\""..package.."\""
			},
		},
	}
}
