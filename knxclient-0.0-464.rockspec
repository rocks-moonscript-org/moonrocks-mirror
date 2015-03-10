package = "knxclient"
version = "0.0-464"
description = {
	summary = "A library which provides the means to communicate with several KNX-related devices or services.",
	license = "GPL2",
	homepage = "https://github.com/vapourismo/knxclient-lua"
}

source = {
	url = "git://github.com/vapourismo/knxclient-lua"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "make",
	build_variables = {
		CFLAGS = "$(CFLAGS)",
		LIBFLAG = "$(LIBFLAG)",
		LUA_LIBDIR = "$(LUA_LIBDIR)",
		LUA_INCDIR = "$(LUA_INCDIR)"
	},
	install_variables = {
		INST_LIBDIR = "$(LIBDIR)"
	}
}
