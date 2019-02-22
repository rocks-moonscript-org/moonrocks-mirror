package = "Escher"
version = "0.4.0-1"
source = {
  url = "git://github.com/emartech/escher-lua",
  tag = "0.4.0-1",
  dir = "escher-lua"
}
description = {
    summary = "Lua implementation of the Escher HTTP request signing library",
    homepage = "https://github.com/emartech/escher-lua/",
    license = "MIT"
}
dependencies = {
    "luacrypto == 0.3.2-2",
    "date == 2.1.2-1"
}
build = {
    type = "builtin",
    modules = {
        ["escher"] = "src/escher.lua",
        ["escher.canonicalizer"] = "src/escher/canonicalizer.lua",
        ["escher.signer"] = "src/escher/signer.lua",
        ["escher.urlhandler"] = "src/escher/urlhandler.lua",
        ["escher.utils"] = "src/escher/utils.lua"
    }
}
