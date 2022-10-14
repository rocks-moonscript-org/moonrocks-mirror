package = "lox"
version = "1.0-1"
source = {
   url = "git+https://github.com/josh-feng/lox",
   tag = "v1.0",
}
-- format: <https://github.com/luarocks/luarocks/wiki/Rockspec-format>
description = {
   summary = "lua object-model for x/html",
   detailed = [[
      Lua Object-model for X/html (based on a simple/sloppy markup parser)

      Log:
      - parser(lsmp)/lua-dom/xpath
      - chain-lapi/doc
      - examples
   ]],
   homepage = "http://github.com/josh-feng/lox",
   license = "MIT",
   -- labels = {"xml", "linux"}
}
dependencies = {
   "lua >= 5.1",
   'pool >= 2.4',
}
build = {
   type = "builtin",
   modules = {
      lom = "src/lom.lua",        -- lua object model
      us  = "src/us.lua",         -- useful stuff
      xob = "src/XmlObject.lua",  -- xml object
      lsmp = { -- *ML c parser: c module written in C
         sources = {"src/lsmp/lsmp.h", "src/lsmp/lsmp.c"},
         defines = {},
         libraries = {},
         incdirs = {"src"},
         libdirs = {"src"}
      }
   },
   -- copy_directories = {"doc", "examples"}
}
