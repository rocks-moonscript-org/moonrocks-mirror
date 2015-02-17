package = "luakatsu"
version = "1.0-1"
source = {
	url = "git://github.com/Nymphium/luakatsu",
	tag = "v1.0-1"
}
description = {
	summary = "Aikatsu! --- Idol KATSUDOU, with Lua",
	detailed = [[
	Let's Aikatsu! with Lua!!
	]],
	homepage = "https://github.com/Nymphium/luakatsu",
	license = "MIT",
	maintainer = "Nymphium"
}
dependencies = {
	"lua ~> 5.2"
}
build = {
	type = "builtin",
	modules = {
		luakatsu = "luakatsu.lua",
		uakatsu = "uakatsu.lua",
		['luakatsu.bin.char_setmeta'] = "luakatsu/bin/char_setmeta.lua",
		['luakatsu.bin.which_school'] = "luakatsu/bin/which_school.lua",
		['luakatsu.lib.characters.idols'] = "luakatsu/lib/characters/idols.lua",
		['luakatsu.lib.characters.others'] = "luakatsu/lib/characters/others.lua",
		['luakatsu.lib.groups.groups'] = "luakatsu/lib/groups/groups.lua",
	}
}

