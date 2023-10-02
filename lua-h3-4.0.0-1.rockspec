rockspec_format = "3.0"
package = "lua-h3"
version = "4.0.0-1"
description = {
	summary = "Lua bindings for H3",
	detailed = [[
		Lua H3 provides Lua bindings for the H3 library. H3 is a hexagonal hierarchical
		geospatial indexing system.
	]],
	license = "MIT",
	homepage = "https://github.com/anaef/lua-h3",
	labels = { "geo" },
}
dependencies = {
	"lua >= 5.3"
}
external_dependencies = {
	LIBH3 = {
		header = "h3/h3api.h"
	},
}
source = {
	url = "git+https://github.com/anaef/lua-h3.git",
	tag = "v4.0.0",
}
build = {
	type = "builtin",
	modules = {
		h3 = {
			sources = {
				"src/h3.c",
			},
			defines = {
				"_REENTRANT",
				"_GNU_SOURCE",
			},
			libraries = {
				"h3",
			},
			incdirs = {
				"$(LIBH3_INCDIR)",
			},
		},
	},
}
