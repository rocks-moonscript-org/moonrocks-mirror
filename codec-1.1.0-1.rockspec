package = "codec"
version = "1.1.0-1"
source = {
    url = "git://github.com/mah0x211/lua-codec.git",
    tag = "v1.1.0"
}
description = {
    summary = "encoding and decoding module collection.",
    homepage = "https://github.com/mah0x211/lua-codec", 
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "lua-cjson >= 2.1.0",
    "base64mix >= 1.0.0",
    "geo >= 1.1.0",
    "hex >= 1.0.0",
    "idna >= 1.0.0",
    "url >= 1.0.1"
}
build = {
    type = "builtin",
    modules = {
        codec = "codec.lua"
    }
}

