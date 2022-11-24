package = "Qaluate"
version = "1.0.0-1"
source = {
	url = "git://github.com/Janbuller/Qaluate",
    tag = "v1.0.0"
}
description = {
	summary = "A lua interface for libqalculate.",
	detailed = [[
      Very simple interface for using libqalculate with lua.
    ]],
	license = "LGPLv3",
	homepage = "https://github.com/Janbuller/Qaluate",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		Qaluate = {
			sources = { "Qaluate.cpp" },
			libraries = { "qalculate" },
			header = "libqalculate/qalculate.h",
			incdirs = { "$(QALCULATE_INCDIR)" },
			libdirs = { "$(QALCULATE_LIBDIR)" },
		},
	},
}
