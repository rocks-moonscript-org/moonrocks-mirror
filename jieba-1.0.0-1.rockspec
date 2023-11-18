package = "jieba"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/noearc/jieba-lua.git",
   tag = "v1.0.0",
}
description = {
   summary = "Chinse word segmentation library.",
   detailed = [[
      Chinse word segmentation library for Lua, based on the original python implementation.
   ]],
   homepage = "https://github.com/noearc/jieba-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["jieba"] = "lua/jieba.lua",
      ["jb_utils"] = "lua/jb_utils.lua",
      ["hmm"] = "lua/hmm.lua",
   },
}
