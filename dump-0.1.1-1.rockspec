package = "dump"
version = "0.1.1-1"
source = {
    url = "git://github.com/mah0x211/lua-dump.git",
    tag = "v0.1.1"
}
description = {
    summary = "stringified lua data structures, suitable for both printing and loading as chunk",
    homepage = "https://github.com/mah0x211/lua-dump",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        dump = "dump.lua"
    }
}

