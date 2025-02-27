package = "terminal-god"
version = "0.1.1-1"
source = {
   url = "git://github.com/meetorman/terminal-god",
   tag = "v0.1.1"
}
description = {
   summary = "Terminal God - My Neovim configuration",
   detailed = [[
      This is a complete Neovim configuration package including all necessary
      plugins and settings for the Terminal God setup.
   ]],
   homepage = "https://github.com/meetorman/terminal-god",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["terminal-god"] = "init.lua",
   },
}
