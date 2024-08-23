package = "xindicators"
version = "1.1-1"
source = {
	url = "git://github.com/EXtremeExploit/xindicators",
	tag = "v1.1"
}
description = {
	summary = "Get XKB indicators in lua",
	homepage = "https://github.com/EXtremeExploit/xindicators",
	license = "GNU LGPLv3"
}
supported_platforms = {
	"linux"
}
dependencies = {
	"lua >= 5.2",
}
external_dependencies = {
	-- x11 and pkgconfig, make file takes care of the rest
}
build = {
	type = "make",
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LIBFLAG="$(LIBFLAG)",
		LUA_LIBDIR="$(LUA_LIBDIR)",
		LUA_BINDIR="$(LUA_BINDIR)",
		LUA_INCDIR="$(LUA_INCDIR)",
		LUA="$(LUA)",
	},
	install_variables = {
		INST_PREFIX="$(PREFIX)",
		INST_BINDIR="$(BINDIR)",
		INST_LIBDIR="$(LIBDIR)",
		INST_LUADIR="$(LUADIR)",
		INST_CONFDIR="$(CONFDIR)",
	},
}