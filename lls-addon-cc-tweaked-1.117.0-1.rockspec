rockspec_format = "3.0"
package = "lls-addon-cc-tweaked"
version = "1.117.0-1"
source = {
	url = "git+https://gitlab.com/carsakiller/cc-tweaked-documentation",
}
description = {
	summary = "LuaCATS annotations for CC:Tweaked",
	detailed = "Manually crafted LuaCATS annotations for Minecraft's CC:Tweaked computer mod",
	homepage = "https://gitlab.com/carsakiller/cc-tweaked-documentation",
	license = "MIT",
}
build = {
	type = "lls-addon",
	settings = {
		["runtime.version"] = "Lua 5.3",
		["runtime.builtin"] = {
			io = "disable",
			os = "disable",
		},
	},
}
