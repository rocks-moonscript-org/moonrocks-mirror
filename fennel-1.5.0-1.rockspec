package = "fennel"
local fennel_version = "1.5.0"
version = (fennel_version .. "-1")
source = { url = "git://github.com/bakpakin/Fennel", tag = fennel_version }
description = {
	summary = "A lisp that compiles to Lua",
	detailed = ("Get your parens on--write macros and " .. "homoiconic code on the Lua runtime!"),
	license = "MIT",
	homepage = "https://fennel-lang.org",
	maintainer = "Jesse Wertheim <jaawerth@proton.me>",
}
dependencies = { "lua >= 5.1" }
build = {
	type = "make",
	variables = { CFLAGS = "$(CFLAGS)", LUA = "$(LUA)", LUA_INCDIR = "$(LUA_INCIDR)" },
	install_variables = {
		PREFIX = "$(PREFIX)",
		BIN_DIR = "$(BINDIR)",
		LUA_LIB_DIR = "$(LUADIR)",
		MAN_DIR = "$(PREFIX)/doc",
	},
}
return nil
