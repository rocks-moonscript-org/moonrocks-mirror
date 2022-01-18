package = "tglua"
version = "1.0-0"

source = {
	url = "git://github.com/borisd93/tglua.git"
}

description = {
	summary = "A telegram api connector for lua",
	homepage = "https://github.com/borisd93/tglua",
	license = "GPL-3.0"
}

dependencies = {
	"lua >= 5.2"
}

build = {
	type = "make",

	build_variables = {
		CFLAGS="$(CFLAGS)",
		LIBFLAG="$(LIBFLAG)",
	},

	install_variables = {
		LUADIR="$(LUADIR)",
		INST_LIBDIR="$(LIBDIR)",
	},
}
