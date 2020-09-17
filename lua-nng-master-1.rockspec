package = "lua-nng"
rockspec_format="3.0"
version = "master-1"
source = {
	url = "git+https://cogarr.net/source/cgit.cgi/lua-nng",
}
description = {
	summary = "A simple binding for Nanomessage Next Generation",
	homepage = "https://cogarr.net/source/cgit.cgi/lua-nng/about",
	license = "BSD/2 Clause",
	maintainer = "Alexander Pickering <alex@cogarr.net>",
	labels = {"network","nanomessage","nng"}
}
external_dependencies = {
	NNG = {
		library = "nng",
		header = "nng/nng.h"
	}
}
build = {
	type = "make",
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LUA_INCDIR="$(LUA_INCDIR)",
		LUA_LIBDIR="$(LUA_LIBDIR)",
		NNG_INCDIR="$(NNG_INCDIR)",
		NNG_LIBDIR="$(NNG_LIBDIR)",
		FIND="$(FIND)",
		LIB_EXTENSION="$(LIB_EXTENSION)",
		LIBFLAG="$(LIBFLAG)",
	},
	install_variables = {
		INST_PREFIX="$(PREFIX)",
		INST_LIBDIR="$(LIBDIR)",
		NNG_LIBDIR="$(NNG_LIBDIR)",
		LUA_LIBDIR="$(LUA_LIBDIR)",
		LIB_EXTENSION="$(LIB_EXTENSION)",
		CP="$(CP)",
	},
}
