package = "luabadges"
version = "0.1.0-1"

source = {
	url = "git+https://github.com/smit4k/luabadges",
}

description = {
	summary = "Generate badges for Lua projects",
	homepage = "https://github.com/smit4k/luabadges",
	license = "MIT",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
	modules = {
		["luabadges"] = "lua/luabadges/init.lua",
		["luabadges.badge_generator"] = "lua/luabadges/badge_generator.lua",
		["luabadges.color_presets"] = "lua/luabadges/color_presets.lua",
		["luabadges.calc_text_width"] = "lua/luabadges/calc_text_width.lua",
		["luabadges.widths_verdana_110"] = "lua/luabadges/widths_verdana_110.lua",
	},
}
