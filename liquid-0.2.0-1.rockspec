rockspec_format = "1.1"
package = "liquid"
version = "0.2.0-1"
source = {
   url = "https://github.com/3scale/liquid-lua/archive/v0.2.0.tar.gz",
   md5 = "794cd5ed8e5eb6c7397e2ede7d4a5c05",
   dir = "liquid-lua-0.2.0",
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
