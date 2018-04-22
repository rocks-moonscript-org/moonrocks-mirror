package = "mediatypes"
version = "2.0.0-1"
source = {
    url = "git://github.com/mah0x211/lua-mediatypes.git",
    tag = "v2.0.0"
}
description = {
    summary = "MIME type utility module",
    homepage = "https://github.com/mah0x211/lua-mediatypes",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        mediatypes = "mediatypes.lua",
        ["mediatypes.default"] = "lib/default.lua",
    }
}
