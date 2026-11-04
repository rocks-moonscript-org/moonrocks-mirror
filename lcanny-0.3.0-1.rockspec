---@diagnostic disable: lowercase-global

package = "lcanny"
version = "0.3.0-1"
source = {
   url = "git+https://github.com/royratcliffe/lcanny.git",
   tag = "v0.3.0",
}
description = {
   summary = "Lua utility modules for tables, iteration, and serialisation",
   detailed = "A collection of Lua modules for collecting values, indexing and recursing through tables, interleaving arrays, serialising values, and applying table patches.",
   homepage = "https://github.com/royratcliffe/lcanny",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1",
   "luasocket",
}
build = {
   type = "builtin",
   modules = {
      by = "src/by.lua",
      co = "src/co.lua",
      collecting = "src/collecting.lua",
      div = "src/div.lua",
      escape = "src/escape.lua",
      filename = "src/filename.lua",
      filtering = "src/filtering.lua",
      hi = "src/hi.lua",
      indexing = "src/indexing.lua",
      interleaving = "src/interleaving.lua",
      is = "src/is.lua",
      leap = "src/leap.lua",
      patching = "src/patching.lua",
      recursing = "src/recursing.lua",
      redis = "src/redis.lua",
      resp = "src/resp.lua",
      ["resp.null"] = "src/resp/null.lua",
      ["resp.v2"] = "src/resp/v2.lua",
      ["resp.v2.recv"] = "src/resp/v2/recv.lua",
      ["resp.v2.send"] = "src/resp/v2/send.lua",
      serialising = "src/serialising.lua",
      so = "src/so.lua",
      strbuf = "src/strbuf.lua",
      uu = "src/uu.lua",
   },
}
