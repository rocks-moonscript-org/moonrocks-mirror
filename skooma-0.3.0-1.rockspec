package = "skooma"
version = "0.3.0-1"
source = {
   url = "git+http://git@github.com/darkwiiplayer/skooma",
   tag = "v0.3.0"
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
      ["skooma.serialise"] = "skooma/serialise.lua",
      ["skooma.slotty"] = "skooma/slotty.lua"
   }
}
