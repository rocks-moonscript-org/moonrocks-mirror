package = "lua-option"
version = "0.2-0"
source = {
	url = "git://github.com/Sleitnick/LuaOption",
	tag = "v0.2.0"
}
description = {
	summary = "Lua Option implementation",
	homepage = "https://github.com/Sleitnick/LuaOption",
	license = "MIT",
	maintainer = "Stephen Leitnick"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		option = "src/option.lua"
	}
}