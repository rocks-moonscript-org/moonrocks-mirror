package = "riseml"
version = "0.1-2"
source = {
   url = "git://github.com/riseml/client-lua",
   tag = "v0.1-2"
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
