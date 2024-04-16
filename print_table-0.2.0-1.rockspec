package = "print_table"
version = "0.2.0-1"
source = {
   url = "git://github.com/mertovun/print_table.lua.git",
   tag = "v0.2.0"
}
description = {
   summary = "A simple table printing module for Lua.",
   detailed = [[
      print_table allows for easy printing of Lua tables, including nested tables,
      by providing a simple function call interface.
   ]],
   homepage = "http://github.com/mertovun/print_table.lua",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
     ["print_table"] = "print_table.lua"
   }
}
