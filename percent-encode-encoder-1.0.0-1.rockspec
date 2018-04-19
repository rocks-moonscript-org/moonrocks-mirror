package = "percent-encode-encoder"
version = "1.0.0-1"
source = {
   url = ""
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.percent-encode-encoder.access"] = "access.lua",
      ["kong.plugins.percent-encode-encoder.handler"] = "handler.lua",
      ["kong.plugins.percent-encode-encoder.schema"] = "schema.lua"
   }
}
