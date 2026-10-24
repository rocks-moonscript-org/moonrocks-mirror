---@diagnostic disable: lowercase-global

package = "lcanny"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/royratcliffe/lcanny.git",
   tag = "v0.1.0",
}
description = {
   summary = "Lua utility modules for tables, iteration, and serialisation",
   detailed = "A collection of Lua modules for collecting values, indexing and recursing through tables, interleaving arrays, serialising values, and applying table patches.",
   homepage = "https://github.com/royratcliffe/lcanny",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      by = "src/by.lua",
      collecting = "src/collecting.lua",
      indexing = "src/indexing.lua",
      interleaving = "src/interleaving.lua",
      is = "src/is.lua",
      patching = "src/patching.lua",
      recursing = "src/recursing.lua",
      serialising = "src/serialising.lua",
      strbuf = "src/strbuf.lua",
   },
}
