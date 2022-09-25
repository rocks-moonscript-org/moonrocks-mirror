package = "lox"
version = "0.9-1"
source = {
   url = "git+https://github.com/josh-feng/lox",
   tag = "v0.9",
}
description = {
   summary = "lua object-model for x/hml",
   detailed = [[
      Lua Object-model for Xml
      (based on a simple/sloppy markup parser)

      Log:
      0.x parser(lsmp)/lua-dom/xpath
      1.x chain-lapi
   ]],
   homepage = "http://github.com/josh-feng/lox",
   license = "MIT",
   -- labels = {"xml", "linux"}
}
dependencies = {
   "lua >= 5.1",
   'pool >= 2.3',
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
