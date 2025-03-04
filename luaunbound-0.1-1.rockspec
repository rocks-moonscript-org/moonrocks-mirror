package = "luaunbound"
version = "0.1-1"
source = {
	url = "hg+http://code.zash.se/luaunbound/",
	tag = "5449acf5fa44"
}
description = {
	summary = "A binding to libunbound",
	homepage = "https://www.zash.se/luaunbound.html",
	license = "MIT/X11",
}
external_dependencies = {
	libunbound = {
		library = 'unbound',
		header = 'unbound.h',
	},
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		lunbound = {
			sources = { "lunbound.c" },
			libraries = { "unbound" },
		},
	}
}

-- vim: syntax=lua :
