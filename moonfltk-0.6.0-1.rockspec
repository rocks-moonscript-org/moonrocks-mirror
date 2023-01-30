package = "moonfltk"
version = "0.6.0-1"

source = {
	url = "git://github.com/stetre/moonfltk.git",
	tag = "master"
}

description = {
	summary = "Lua bindings for FLTK",
	detailed = [[
	MoonFLTK is a Lua binding library for the Fast Light Toolkit (FLTK).
	It runs on GNU/Linux and on Windows (MSYS2/MinGW) and requires Lua (>=5.3) and FLTK (>=1.3.3).
	]],
	homepage = "https://github.com/stetre/moonfltk",
	license = "MIT"
}

dependencies = { "lua >= 5.3" }

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
		PREFIX="$(PREFIX)",
		INST_PREFIX="$(PREFIX)",
		INST_BINDIR="$(BINDIR)",
		INST_LIBDIR="$(LIBDIR)",
		INST_LUADIR="$(LUADIR)",
		INST_CONFDIR="$(CONFDIR)",
	},
}
