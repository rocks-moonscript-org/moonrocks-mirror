package = "stdlib"
version = "4-2"
source = {
   url = "http://luaforge.net/frs/download.php/2367/stdlib-4.tar.gz",
   dir = "stdlib"
}
description = {
   summary = "Library of modules for common programming tasks",
   detailed = [[
      stdlib is a library of modules for common programming tasks,
      including list, table and functional operations, regexps, objects,
      pretty-printing and getopt. The whole thing can be loaded with 
      'require "std"', or modules can be used individually.
   ]],
   license = "MIT/X11",
   homepage = "http://luaforge.net/projects/stdlib/"
}
dependencies = {
   "lua >= 5.1",
   "lrexlib-pcre >= 2.2.2"
}
build = {
   type = "none",
   install = {
      lua = {
         "modules/base.lua",
         "modules/debug_ext.lua",
         "modules/getopt.lua",
         "modules/io_ext.lua",
         "modules/lcs.lua",
         "modules/list.lua",
         "modules/math_ext.lua",
         "modules/mbox.lua",
         "modules/object.lua",
         "modules/parser.lua",
         "modules/rex.lua",
         "modules/set.lua",
         "modules/std.lua",
         "modules/string_ext.lua",
         "modules/table_ext.lua",
         "modules/xml.lua"
      }
   }
}
