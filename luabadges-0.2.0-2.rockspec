package = "luabadges"
version = "0.2.0-2"

source = {
	url = "git+https://github.com/smit4k/luabadges",
}

description = {
	summary = "A Lua library for creating markdown badges ",
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
		["luabadges.badge_styles"] = "lua/luabadges/badge_styles.lua",
		["luabadges.color_presets"] = "lua/luabadges/color_presets.lua",
		["luabadges.calc_text_width"] = "lua/luabadges/calc_text_width.lua",
		["luabadges.widths_verdana_110"] = "lua/luabadges/widths_verdana_110.lua",
	},
}
