package = "dyana"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/sicusa/Dyana",
   tag = "0.1.0-1"
}
description = {
   summary = "A functional tweening library for Lua",
   homepage = "https://github.com/sicusa/Dyana",
   license = "BSD-3-Clause",
   maintainer = "Phlamcenth Sicusa <sicusa@gilatod.art>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["dyana.easing"] = "src/dyana/easing.lua",
      ["dyana.actions"] = "src/dyana/actions.lua",
      ["dyana.tracks"] = "src/dyana/tracks.lua"
   }
}
