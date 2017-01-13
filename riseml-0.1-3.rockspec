package = "riseml"
version = "0.1-3"
source = {
   url = "git://github.com/riseml/client-lua",
   tag = "v0.1-3"
}
description = {
   summary = "",
   detailed = "",
   homepage = "*** please enter a project homepage ***",
   license = ""
}
dependencies = {
  "torch", "lua", "turbo", "lua-cjson"
}
build = {
   type = "builtin",
   modules = {
      riseml = "src/riseml.lua"
   }
}
