rockspec_format = "1.1"
package = "liquid"
version = "0.1.1-1"
source = {
   url = "git://github.com/3scale/liquid-lua.git",
   branch = "v0.1.1",
   url = "https://github.com/3scale/liquid-lua/archive/v0.1.1.tar.gz",
   md5 = "3bc1bb7c7b60925928bda78867c62ebd",
   dir = "liquid-lua-0.1.1",
}
description = {
   summary = "A lua implementation of liquid for OpenResty platform.",
   detailed = "Since liquid markup language has no its official language specification document , liquid-lua adopts a classic lexer/parser/interpreter implementation approch and comes up with a strict error mode.",
   homepage = "https://github.com/chenxianyu2015/liquid-lua",
   license = "BSD-2-Clause"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["liquid"] = "lib/liquid.lua"
   }
}
