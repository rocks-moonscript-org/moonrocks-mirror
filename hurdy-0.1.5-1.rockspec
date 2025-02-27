package = "hurdy"
version = "0.1.5-1"
source = {
    url = "https://codeberg.org/apicici/hurdy/archive/v0.1.5.tar.gz",
    dir = "hurdy"
}
description = {
    summary = "A language that compiles to Lua.",
    detailed = [[
        A language that compiles to Lua.
        Includes a library to load hurdy files directly from Lua and a standalone compiler.
    ]],
    homepage = "https://hurdy.apicici.com",
    license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = 'cmake',
    variables = {
        LUAROCKS_LUA="$(LUA)",
        LUAROCKS_BINDIR="$(LUA_BINDIR)",
        CMAKE_INSTALL_PREFIX="$(PREFIX)"
    },
    install = {
        bin = {
            "build.luarocks/hurdyc/hurdyc"
        }
    }
}
