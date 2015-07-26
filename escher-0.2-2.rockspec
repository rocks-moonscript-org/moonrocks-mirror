package = "Escher"
version = "0.2-2"
source = {
    url = "git://github.com/emartech/escher-lua",
    tag = "0.2-2",
    dir = "escher-lua"
}
description = {
    summary = "Lua implementation of the Escher HTTP request signing library",
    homepage = "https://github.com/emartech/escher-lua/",
    license = "MIT"
}
dependencies = {
    "luafilesystem",
    "json",
    "luacrypto",
    "date",
}
build = {
    type = "builtin",
    modules = {
        ["escher"] = "escher-lua/lib/escher.lua",
        ["escher.urlhandler"] = "escher-lua/lib/escher/urlhandler.lua",
    }
}
