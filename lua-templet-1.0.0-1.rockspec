package = "lua-templet"
version = "1.0.0-1"
source = {
   url = "git://git.colberg.org/lua-templet",
   tag = "1.0.0"
}
description = {
   summary = "template preprocessor for text templates with embedded Lua statements and expressions",
   detailed = [[
      Templet is a template preprocessor written in pure Lua, which parses
      text templates with embedded Lua statements and Lua expressions.
      Templet is based on the Slightly Less Simple Lua Preprocessor [2]
      written by Rici Lake; with slightly improved parsing, support for
      an output function, and a test suite.
   ]],
   homepage = "http://colberg.org/lua-templet/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
build = {
   type = "builtin",
   modules = {
      templet = "templet/init.lua"
   },
   copy_directories = {
      "doc"
   }
}
