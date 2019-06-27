package = "request-limit-validator"
version = "0.1.2-1"
local pluginName = "request-limit-validator"
source = {
   url = "git+ssh://git@github.com/Babylonpartners/request-limit-validator.git"
}
description = {
   homepage = "https://github.com/Babylonpartners/request-limit-validator",
   license = "WTFPL"
}
dependencies = {
   "lua ~> 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.request-limit-validator.handler"] = "handler.lua",
      ["kong.plugins.request-limit-validator.schema"] = "schema.lua"
   }
}
