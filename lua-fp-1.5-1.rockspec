package = "lua-fp"
version = "1.5-1"
source = {
   url = "https://github.com/JesterXL/lua-fp/archive/v1.5.tar.gz",
   tag = "v1.5"
}
description = {
   summary = "Functional Programming and list comprehension helper functions for Lua.",
   detailed = [[
        Functional Programming and list comprehension helper functions for Lua.
        Borrowed many array/list comprehensions from Lodash as well as various predicates.
        All functions that have more than 1 argument are curried by default.
   ]],
   homepage = "https://jesterxl.github.io/lua-fp/doc/index.html",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
       ['lua-fp'] = 'src/lua-fp.lua',
   },
   copy_directories = { "doc", "test" }
}