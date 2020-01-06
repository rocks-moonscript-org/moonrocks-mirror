package = "adt.lua"
version = "1.0-1"
source = {
   url = "git+ssh://git@github.com/nymphium/adt.lua"
}
description = {
   summary = "Algebraic Data Types for Lua",
   detailed = "Algebraic Data Types for Lua",
   homepage = "https://github.com/Nymphium/adt.lua",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      adt = "src/adt.lua"
   }
}
