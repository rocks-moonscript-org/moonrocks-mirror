package = "Escher"
version = "0.1-4"
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
        ["escher"] = "lib/escher.lua",
        ["escher.urlhandler"] = "lib/escher/urlhandler.lua",
    },
    copy_directories = {"spec"}
}
