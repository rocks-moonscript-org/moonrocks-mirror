package = "lua-fp"
version = "1.1-1"
source = {
   url = "https://github.com/JesterXL/lua-fp",
   tag = "v1.1"
}
description = {
   summary = "Functional Programming and list comprehension helper functions for Lua.",
   detailed = [[
      todo
   ]],
   homepage = "https://github.com/JesterXL/lua-fp",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
       luafp = "src/lua-fp.lua"
   },
   copy_directories = { "doc", "test" }
}