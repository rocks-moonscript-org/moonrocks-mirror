package = "lua-checkutf8"
version = "0.0.2-1"
source = {
	url = "git+https://github.com/ziyao233/lua-checkutf8",
	tag = "v0.0.2",
}
description = {
	summary = "Module for validating and repairing UTF-8 sequences",
	homepage = "https://github.com/ziyao233/lua-checkutf8",
	license = "MPL-2.0",
}
dependencies = {
	"lua >= 5.3",
}
build = {
	type = "builtin",
	modules = {
		checkutf8	= "checkutf8.c",
	},
}
