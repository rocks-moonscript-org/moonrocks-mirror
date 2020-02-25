rockspec_format = "3.0"
package = "gambiarra"
version = "0.4.1-0"
source = {
   url = "git+https://git.kokolor.es/imo/gambiarra",
   tag = "v0.4.1-0"
}
description = {
   summary = "A tiny lua unit-testing library.",
   detailed = "Gambiarra is a Lua version of Kludjs, and follows the idea of ultimately minimal unit testing. This is a fork of https://bitbucket.org/zserge/gambiarra.",
   homepage = "https://git.kokolor.es/imo/gambiarra",
   license = "MIT",
   labels = { "test" }
}
dependencies = {
  "lua <= 5.4"
}
build = {
   type = "builtin",
   modules = {
      gambiarra = "src/gambiarra.lua"
   }
}
