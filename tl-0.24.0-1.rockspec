rockspec_format = "3.0"
package = "tl"
version = "0.24.0-1"
source = {
   url = "git+https://github.com/teal-language/tl",
   tag = "v0.24.0",
}
description = {
   summary = "Teal, a typed dialect of Lua",
   homepage = "https://github.com/teal-language/tl",
   license = "MIT",
}
dependencies = {
   -- this is really an optional dependency if you're running Lua 5.3,
   -- but if you're using LuaRocks, pulling it shouldn't be too much
   -- trouble anyway.
   "compat53 >= 0.11",

   -- needed for the cli tool
   "argparse",
}
test_dependencies = {
   "dkjson",
   "luafilesystem",
}
build = {
   modules = {
      tl = "tl.lua",
   },
   install = {
      bin = {
         "tl"
      },
      lua = {
         "tl.tl"
      }
   },
}
