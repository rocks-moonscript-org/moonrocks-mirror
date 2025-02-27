package = "panluna"
version = "0.2.2-1"
source = {
   url = "git://github.com/tarleb/panluna",
   tag = "v0.2.2",
}
description = {
   summary = "Extensible Markdown parsing for pandoc",
   detailed = "A connector between lunamark and pandoc.",
   homepage = "https://github.com/tarleb/panluna",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.4",
   "lunamark ~> 0.6",
}
build = {
   type = "builtin",
   modules = {
      ["panluna"] = "panluna.lua",
   }
}
