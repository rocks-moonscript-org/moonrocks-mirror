package = "Escher"
version = "0.2-6"
source = {
  url = "git://github.com/emartech/escher-lua",
  tag = "0.2-6",
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
        ["escher"] = "lib/escher.lua",
        ["escher.urlhandler"] = "lib/escher/urlhandler.lua",
    }
}
