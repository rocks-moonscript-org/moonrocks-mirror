package = "regkex"
version = "master-1"
source = {
	url = "git+https://codeberg.org/nazrin/lua-regkex.git"
}
description = {
	summary = "Another PCRE2 binding for Lua. Aims for a comfortable and fast API while giving access to most advanced features and usecases.",
	homepage = "https://codeberg.org/nazrin/lua-regkex",
	license = "MPL-2.0"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		regkex = {
			libraries = { "pcre2-8" },
			sources = "src/main.c"
		}
	}
}
