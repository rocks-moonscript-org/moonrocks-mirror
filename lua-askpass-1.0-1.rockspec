package = "lua-askpass"
version = "1.0-1"
source = {
	url = "git+https://github.com/absolpega/lua-askpass",
	tag = "v1.0",
}
description = {
	homepage = "https://github.com/absolpega/lua-askpass",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1, < 5.4",
}
build = {
	type = "none",
	install = {
		bin = { "askpass.lua" },
	},
}
