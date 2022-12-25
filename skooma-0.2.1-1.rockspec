package = "skooma"
version = "0.2.1-1"
source = {
   url = "git+http://git@github.com/darkwiiplayer/skooma",
   tag = "v0.2.1"
}
description = {
   homepage = "https://github.com/darkwiiplayer/skooma",
   license = "Public Domain"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      skooma = "skooma/init.lua",
      ["skooma.dom"] = "skooma/dom.lua",
      ["skooma.env"] = "skooma/env.lua",
      ["skooma.load"] = "skooma/load.lua",
      ["skooma.serialise"] = "skooma/serialise.lua"
   }
}
