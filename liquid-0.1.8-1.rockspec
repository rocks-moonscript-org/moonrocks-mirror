rockspec_format = "1.1"
package = "liquid"
version = "0.1.8-1"
source = {
   url = "https://github.com/3scale/liquid-lua/archive/v0.1.8.tar.gz",
   md5 = "b68f0bde4f5accc62db9360ddef7b09e",
   dir = "liquid-lua-0.1.8",
}
description = {
   summary = "A lua implementation of liquid for OpenResty platform.",
   detailed = "Since liquid markup language has no its official language specification document , liquid-lua adopts a classic lexer/parser/interpreter implementation approch and comes up with a strict error mode.",
   homepage = "https://github.com/chenxianyu2015/liquid-lua",
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