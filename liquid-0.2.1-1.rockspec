package = "liquid"
version = "0.2.1-1"
source = {
   url = "git+https://github.com/3scale/liquid-lua.git",
   tag = "v0.2.1"
}
description = {
   summary = "A lua implementation of liquid for OpenResty platform.",
   detailed = "Since liquid markup language has no its official language specification document , liquid-lua adopts a classic lexer/parser/interpreter implementation approch and comes up with a strict error mode.",
   homepage = "https://github.com/3scale/liquid-lua",
   license = "BSD-2-Clause"
}
dependencies = {
   "date >= 2.2-2"
}
build = {
   type = "builtin",
   modules = {
      ["liquid"] = "lib/liquid.lua"
   }
}
