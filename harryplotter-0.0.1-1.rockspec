package = "HarryPlotter"
version = "0.0.1-1"

source = {
	url = "https://github.com/BrettRToomey/harryplotter",
}

description = {
	summary = "A clean, simple GNUPlot wrapper for Lua",
	homepage = "https://github.com/BrettRToomey/harryplotter",
	license = "MIT",
}

dependencies = {
	"lua >= 5.3",
}

build = {
	type = "make",
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LIBFLAG="$(LIBFLAG)",
		LUA_INCDIR="$(LUA_INCDIR)",
	},

	install_variables = {
		INST_LIBDIR="$(LIBDIR)",
	},

	copy_directories = {
		"examples",
	},
}
