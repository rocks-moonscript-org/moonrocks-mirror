package = "pulseaudio"
version = "0.2-1"
source = {
	url = "git://github.com/doronbehar/lua-pulseaudio",
	tag = "v0.2"
}
description = {
	summary = "Bindings to libpulse",
	homepage = "https://github.com/doronbehar/lua-pulseaudio",
	license = "Apache v2.0"
}
supported_platforms = {
	"linux"
}
dependencies = {
	"lua >= 5.1",
}
external_dependencies = {
	-- pulseaudio and pkgconfig, make file takes care of the rest
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
