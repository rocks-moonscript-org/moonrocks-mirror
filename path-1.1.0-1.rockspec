package = "path"
version = "1.1.0-1"
source = {
    url = "git://github.com/mah0x211/lua-path.git",
    tag = "v1.1.0"
}
description = {
    summary = "path string manipulation",
    homepage = "https://github.com/mah0x211/lua-path",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        path = "path.lua",
        ["path.pathc"] = {
            sources = { "src/path.c" }
        }
    }
}
