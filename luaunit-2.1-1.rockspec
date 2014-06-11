package = "LuaUnit"
version = "2.1-1"
source =
{
	url = "git://github.com/rjpcomputing/luaunit",
	tag = "v2_1"
}

description =
{
	summary = "A unit testing framework",
	detailed =
	[[
		Luaunit is a testing framework for Lua, in the spirit of Extrem Programming.

		Luaunit is derived from the initial work of Ryu Gwang but has evolved a lot
		from the original code as my understanding of lua progressed.

		Luaunit should work on all platforms supported by lua. It was tested on
		Windows XP and Gentoo Linux.

		Luaunit is used extensively in yzis (www.yzis.org), a vi clone, in order to
		test the lua binding of the editor.
	]],
	homepage = "http://github.com/rjpcomputing/luaunit",
	license = "X11"
}

dependencies =
{
	"lua >= 5.1"
}

build =
{
	type = "builtin",
	modules =
	{
		luaunit = "luaunit.lua"
	}
}
