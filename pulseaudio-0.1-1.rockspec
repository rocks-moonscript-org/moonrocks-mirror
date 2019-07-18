package = "pulseaudio"
version = "0.1-1"
source = {
	url = "https://gitlab.com/doronbehar/lua-pulseaudio",
}
description = {
	summary = "Bindings to libpulse",
	homepage = "https://gitlab.com/doronbehar/lua-pulseaudio",
	license = "Apache v2.0"
}
supported_platforms = {
	"linux"
}
dependencies = {
	"lua >= 5.2",
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
