package = "Odielak"
version = "1.1-1"
source = {
 url = "git://github.com/Darvame/odielak",
 tag = "v1.1",
}
description = {
 summary = "A small lua lib, that performs char (1 byte) to value replacements, like string.gsub, but more faster",
 detailed = [[
	replace all single byte values inside the given string with the new given values
	aim to work faster than default string.gsub function
	good to perform string escape (sanitize) operations
	more info: https://github.com/Darvame/odielak
]],
 homepage = "https://github.com/Darvame/odielak",
 license = "MIT"
}
dependencies = {
 "lua >= 5.1"
}
build = {
 type = "command",
 install_command = [[make install CC="$(CC)" LDFLAGS="$(LIBFLAG)" CFLAGS="$(CFLAGS)" LUA_INCDIR="-I$(LUA_INCDIR)" LUA_LIBDIR="$(LIBDIR)"]],
}
