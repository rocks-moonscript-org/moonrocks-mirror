package = "gmi"
version = "0.0.1-2"
source = {
   url = "git+https://git.sr.ht/~siiky/gmi.lua",
   tag = "0.0.1"
}
description = {
   summary = "Gemtext reader and writer",
   homepage = "https://git.sr.ht/~siiky/gmi.lua",
   license = "unlicense"
}
dependencies = {
   "lua ~> 5.4"
}
build = {
   type = "builtin",
   modules = {
      gmi = "gmi.lua"
   }
}
