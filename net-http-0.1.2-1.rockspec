package = "net-http"
version = "0.1.2-1"
source = {
    url = "gitrec://github.com/mah0x211/lua-net-http.git",
    tag = "v0.1.2"
}
description = {
    summary = "http module for lua",
    homepage = "https://github.com/mah0x211/lua-net-http",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "luarocks-fetch-gitrec >= 0.2",
    "halo >= 1.1.8",
    "isa >= 0.1.0",
    "net >= 0.23.0",
    "rfcvalid >= 0.6.0",
    "table-flatten >= 0.2.0",
    "url >= 1.2.1",
}
build = {
    type = "builtin",
    modules = {
        ['net.http.body'] = "lib/body.lua",
        ['net.http.date'] = "lib/date.lua",
        ['net.http.entity'] = "lib/entity.lua",
        ['net.http.header'] = "lib/header.lua",
        ['net.http.request'] = "lib/request.lua",
        ['net.http.response'] = "lib/response.lua",
        ['net.http.server'] = "lib/server.lua",
        ['net.http.status'] = "lib/status.lua",
        ['net.http.util.implc'] = {
            sources = { "src/implc.c" }
        },
        ['net.http.parse'] = {
            incdirs = { "deps/lauxhlib" },
            sources = { "src/parse.c" }
        },
    }
}

