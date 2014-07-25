package = "Pijaz-SDK"
version = "0.1-1"
source = {
   url = "http://github.com/pijaz/pijaz-sdk.git",
}
description = {
  summary = "Pijaz Software Development Kit",
  detailed = [[
    This SDK contains the basic libraries to interact with the Pijaz
    synthesizer platform.

    See http://developer.pijaz.com for more information.
  ]],
  homepage = "http://github.com/pijaz/pijaz-sdk",
  license = "MIT",
}
dependencies = {
  "lua >= 5.0",
  "lua-cjson",
  "luasocket",
}
build = {
  type = "builtin",
  modules = {
    pijaz = "src/pijaz.lua",
    ["pijaz.ServerManager"] = "src/pijaz/server_manager.lua",
    ["pijaz.Product"] = "src/pijaz/product.lua",
  },
}

-- vim: set filetype=lua
