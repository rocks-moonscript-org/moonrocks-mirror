package = "luamoji"
version = "1.0-1"
source = {
   url = "git+https://github.com/HakashiKatake/emoji-renderer-love2d.git"
}
description = {
   summary = "A scalable emoji renderer for LÖVE (Luamoji)",
   detailed = [[
      Luamoji renders emojis in Love2D by lazy-loading images from a directory.
      Supports text wrapping and automatic scaling.
   ]],
   homepage = "https://github.com/HakashiKatake/emoji-renderer-love2d",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      luamoji = "luamoji.lua"
   },
   copy_directories = { "emojis" }
}
