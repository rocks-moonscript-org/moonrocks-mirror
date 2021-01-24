package = "skooma"
version = "0.1.0-1"
source = {
   url = "git+ssh://git@github.com/darkwiiplayer/skooma",
   tag = "v0.1.0"
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
      ["skooma.ast"] = "skooma/ast.lua",
      ["skooma.env"] = "skooma/env.lua",
      ["skooma.serialize"] = "skooma/serialize.lua"
   }
}
