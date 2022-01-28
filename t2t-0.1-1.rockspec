package = "t2t"
version = "0.1-1"
source = {
   url = "git+https://github.com/mikhel1984/t2t"
}
description = {
   homepage = "https://github.com/mikhel1984/t2t",
   license = "MIT",
   summary = "Print table in a tree form",
   detailed = [[
     The library provides functions that allows to prepresent the content of Lua 
     table (structured or unstructured) as a tree. The result can be printed or 
     saved to the file. 
   ]]
}
dependencies = {
  "lua >= 5.1, <= 5.4"
}
build = {
   type = "builtin",
   modules = {
      t2t = "t2t.lua"
   }
}
