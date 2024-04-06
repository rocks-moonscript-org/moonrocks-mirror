rockspec_format = "3.0"
package = "lua-template"
version = "1.0.0-1"
description = {
	summary = "Efficient template engine for Lua",
	detailed = [[
		Lua Template is an efficient template engine with support for conditional rendering,
		loops, includes, and substitutions with escaping.		
	]],
	license = "MIT",
	homepage = "https://github.com/anaef/lua-template",
	labels = { "template" },
}
dependencies = {
	"lua >= 5.3"
}
source = {
	url = "git+https://github.com/anaef/lua-template.git",
	tag = "v1.0.0",
}
build = {
	type = "builtin",
	modules = {
		template = {
			sources = {
				"src/template.c",
				"src/table.c",
				"src/list.c",
			},
			defines = {
				"_REENTRANT",
				"_GNU_SOURCE",
			},
		},
	},
}
