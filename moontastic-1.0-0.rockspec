package = "moontastic"
version = "1.0-0"
source = {
	url = "https://github.com/VideahGams/moontastic/archive/v1.0.0.tar.gz",
	dir = "moontastic-1.0.0",
}
description = {
	summary = "Powerful bash prompt ported to Lua from Python",
	detailed = "Bash prompt inspired by Powerline, ported to Lua from Python for a speed boost. LuaJIT is recommended.",
	homepage = "https://github.com/VideahGams/moontastic",
	license = "MIT"
}

dependencies = {
	"lua 5.1",

	"luafilesystem",
	"luaposix",
	"middleclass"
}
build = {
	type = "builtin",
	modules = {
		['moontastic'] = "moontastic/init.lua",

		['moontastic.segments.basics'] = "moontastic/segments/basics.lua",
		['moontastic.segments.filesystem'] = "moontastic/segments/filesystem.lua",
		['moontastic.segments.git'] = "moontastic/segments/git.lua",
		['moontastic.segments.init'] = "moontastic/segments/init.lua",
		['moontastic.segments.network'] = "moontastic/segments/network.lua",
		['moontastic.segments.sysinfo'] = "moontastic/segments/sysinfo.lua",

		['moontastic.utils.colors'] = "moontastic/utils/colors.lua",
		['moontastic.utils.glyphs'] = "moontastic/utils/glyphs.lua",
		['moontastic.utils.string'] = "moontastic/utils/string.lua",
		['moontastic.utils.sys'] = "moontastic/utils/sys.lua",
		['moontastic.utils.table'] = "moontastic/utils/table.lua",
		['moontastic.utils.utf8'] = "moontastic/utils/utf8.lua",

		['moontastic.themes.arch'] = "moontastic/themes/arch.lua",

		['moontastic.config'] = "moontastic/config.lua"

	},
}
