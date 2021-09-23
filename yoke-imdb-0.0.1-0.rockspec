package = "yoke-imdb"
version = "0.0.1-0"
source = {
   --url = "file:///home/zen/lib/yoke/yoke-imdb-src.zip"
   url = "https://yokerp.com/src/yoke-imdb-src.zip"
}
description = {
  homepage = "https://yokerp.com",
  license = "GNU",
  summary = "Demo haw to create specific form",
  detailed = [[
      Replace self.view by custom view to create dynamic web form
      for import data from imdb/test.csv for example.
  ]],
}
dependencies = {
  "yoke >= 0.0.1-0",
}

build = {
  type = "builtin",
  modules = {
    ["yoke.yoke.apps.imdb.conf"] = "yoke/yoke/apps/imdb/conf.lua",
    ["yoke.yoke.apps.imdb.mods.imdb"] = "yoke/yoke/apps/imdb/mods/imdb.lua",
    ["yoke.imdb"] = "yoke/imdb.lua"
  },
  install = {
    lua = {
      ["yoke.yoke.apps.imdb.test"] = "yoke/yoke/apps/imdb/test.csv",
    },
    bin = {
    }
  }
}
