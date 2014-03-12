package = "literal"
version = "0.1-2"
source = {
   url = "git://github.com/mpeterv/literal.git",
   tag = "0.1"
}
description = {
   summary = "a library for safe evaluation of Lua literal expressions",
   detailed = [[literal is a library for safe evaluation of Lua literal expressions, written in pure Lua. It can evaluate literals like nil, true, false, decimal and hexadecimal numerical constants, short and long strings, and tables of other literals. It can use grammar of Lua 5.1 or Lua 5.2, and provides error messages similar to those of Lua compiler. ]],
   homepage = "https://github.com/mpeterv/literal",
   license = "Public domain"
}
dependencies = {
   "lua >= 5.1, < 5.3",
   "30log >= 0.7"
}
build = {
   type = "builtin",
   modules = {
      literal = "src/literal.lua"
   },
   copy_directories = {
      "doc",
      "spec"
   }
}
