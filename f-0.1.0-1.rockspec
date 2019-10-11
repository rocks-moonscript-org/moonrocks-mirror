package = "f"
version = "0.1.0-1"
source = {
   url = "git://github.com/Desvelao/f",
   tag = "v0.1.0"
}
description = {
   summary = [[Functional methods for tables and strings.
   Included oop tables (like-array) too.
   ]],
   homepage = "https://github.com/Desvelao/f",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["f.init"] = "f/init.lua",
      ["f.string"] = "f/string.lua",
      ["f.table"] = "f/table.lua"
   }
}
