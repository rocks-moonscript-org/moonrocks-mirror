package = "dogmac"
version = "1.0.alpha2-2"
source = {
   url = "git+https://bitbucket.org/dogmalang/dogmac.git"
}
description = {
   summary = "Compiler for the Dogma language.",
   detailed = [[
  Compiler for the Dogma language.
  ]],
   homepage = "http://dogmalang.org",
   license = "",
   maintainer = "Justo Labs <hello@justolabs.com>"
}
dependencies = {
   "lua >= 5.3",
   "dogma-core >= 1.0.alpha2",
   "lua_cliargs >= 3.0",
   "penlight >= 1.5"
}
build = {
   type = "builtin",
   modules = {
      ["dogmac.js"] = "src/js.lua",
      ["dogmac.linter"] = "src/linter.lua"
   },
   install = {
      bin = {
         dogmac = "bin/dogmac.lua"
      }
   }
}
