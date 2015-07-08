package = "Escher"
version = "0.1-6"
source = {
    url = "git://github.com/emartech/escher-lua",
    tag = "0.1",
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
