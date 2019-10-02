package = "rndplugin"
version = "1.0-1"
source = {
   url = "git+https://github.com/anggawardn/rndplugin.git"
}
description = {
   summary = "kong plugin to check request token authorization and forward request to filer payload(security-matrix) written in lua",
   homepage = "https://github.com/anggawardn/rndplugin",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.rndplugin.handler"]  = "src/handler.lua",
      ["kong.plugins.rndplugin.schema"]  = "src/schema.lua"
   }
}
