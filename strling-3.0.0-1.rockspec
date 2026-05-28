package = "strling"
version = "3.0.0-1" -- The CD will inject the version here
source = {
   url = "git+https://github.com/strling-lang/strling.git",
   tag = "v3.0.0"
}
description = {
   summary = "Next-generation production-grade syntax for regular expressions",
   detailed = [[ STRling provides an object-oriented approach to pattern matching with a focus on instructional error handling. ]],
   homepage = "https://github.com/strling-lang/strling",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson"
}
build = {
   type = "builtin",
   modules = {
      strling = "src/strling.lua",
      ["strling.simply"] = "src/simply.lua"
   }
}
