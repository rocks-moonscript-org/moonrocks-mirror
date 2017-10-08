package = "ref"
version = "0.1.0-1"
source = {
    url = "git://github.com/mah0x211/lua-ref.git",
    tag = "v0.1.0"
}
description = {
    summary = "value reference operation module",
    homepage = "https://github.com/mah0x211/lua-ref",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ref = {
            sources = { "src/ref.c" },
        }
    }
}

