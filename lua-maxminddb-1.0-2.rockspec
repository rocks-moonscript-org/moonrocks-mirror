package = "lua-maxminddb"
version = "1.0-2"
source =
{
	url = "git://github.com/wesen1/lua-maxminddb",
	-- tag = "v1.0"
	branch = "develop"
}
description =
{
	summary = "Lua bindings to MaxMind DB v2",
	detailed = [[
		Lua bindings to MaxMind DB v2
	]],
	homepage = "https://github.com/wesen1/lua-maxminddb",
	license = "LGPL"
}
dependencies =
{
	"lua >= 5.1"
}
external_dependencies =
{
	LIBMAXMINDDB =
	{
		header = "maxminddb.h",
		library = "libmaxminddb.so"
	}
}
build =
{
	type = "make",
	build_variables =
	{
        CFLAGS="$(CFLAGS)",
        LIBFLAG="$(LIBFLAG)",
        LUA_LIBDIR="$(LUA_LIBDIR)",
        LUA_BINDIR="$(LUA_BINDIR)",
        LUA_INCDIR="$(LUA_INCDIR)",
        LUA="$(LUA)",
        LIBMAXMINDDB_LIBDIR="$(LIBMAXMINDDB_LIBDIR)",
        LIBMAXMINDDB_INCDIR="$(LIBMAXMINDDB_INCDIR)",
  	},
  	install_variables =
  	{
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
	},
}