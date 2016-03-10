package = "TeaTeaTea"
version = "1.1-1"
source = {
 url = "git://github.com/Darvame/teateatea",
 tag = "v1.1",
}
description = {
 summary = "Lua lib with functions to split (pack) a string into a new array",
 detailed = [[
	Split (pack) a string into a new array or a key-value (kvpack) table with additional options:
	pack(str, sp_token) to split a string into a new array ("a;b;c" -> {"a", "b", "c"})
	kvpack(str, eq_token, sp_token) to split a string into a kay-value table ("a=b;c=d" -> {a = "b", c = "d"})
	with some additional options:
	- trim whitespaces before inserting
	- drop empty values
	- use a separation/equals token string as a dictionary of single byte tokens
	for more: https://github.com/Darvame/teateatea
]],
 homepage = "https://github.com/Darvame/teateatea",
 license = "MIT"
}
dependencies = {
 "lua >= 5.1"
}
build = {
 type = "command",
 install_command = [[make install CC="$(CC)" LDFLAGS="$(LIBFLAG)" CFLAGS="$(CFLAGS)" LUA_INCDIR="-I$(LUA_INCDIR)" LUA_LIBDIR="$(LIBDIR)"]],
}
