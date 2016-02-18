package = "Escher"
version = "0.2-16"
source = {
  url = "git://github.com/emartech/escher-lua",
  tag = "0.2-16",
  dir = "escher-lua"
}
description = {
    summary = "Lua implementation of the Escher HTTP request signing library",
    homepage = "https://github.com/emartech/escher-lua/",
    license = "MIT"
}
dependencies = {
    "luafilesystem",
    "rapidjson",
    "luacrypto",
    "date",
}
build = {
    type = "builtin",
    modules = {
        ["escher"] = "src/escher.lua",
        ["escher.urlhandler"] = "src/escher/urlhandler.lua",
    }
}
