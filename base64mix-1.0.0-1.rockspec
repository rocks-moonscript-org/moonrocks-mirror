package = "base64mix"
version = "1.0.0-1"
source = {
    url = "git://github.com/mah0x211/lua-base64mix.git",
    tag = 'v1.0.0'
}
description = {
    summary = "base64 encode/decode module",
    homepage = "https://github.com/mah0x211/lua-base64mix", 
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        base64mix = {
            sources = { 
                "src/base64.c",
            }
        }
    }
}

