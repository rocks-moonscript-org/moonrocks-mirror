package = "luamoji"
version = "1.0-2"
source = {
   url = "luamoji-1.0-2.rockspec" -- Force using local files during pack
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
