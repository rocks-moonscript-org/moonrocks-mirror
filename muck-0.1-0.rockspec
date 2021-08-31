package = "muck"
version = "0.1-0"
source = {
   url = "git://github.com/johnathan-coe/Muck",
   tag = "v0.1",
}
description = {
   homepage = "https://github.com/johnathan-coe/Muck",
   license = "license"
}
dependencies = {
   "luassert"
}
build = {
   type = "builtin",
   modules = {
      ["muck.stubs.globals"] = "src/stubs/globals.lua",
      ["muck.stubs.Logger"] = "src/stubs/Logger.lua",
      ["muck.stubs.Plugin"] = "src/stubs/Plugin.lua",
      ["muck.stubs.Storage"] = "src/stubs/Storage.lua",
   }
}
