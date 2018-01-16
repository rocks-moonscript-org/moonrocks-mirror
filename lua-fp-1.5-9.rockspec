package = "lua-fp"
version = "1.5-9"
source = {
   url = "https://github.com/JesterXL/lua-fp/archive/v1.5.9.tar.gz",
   tag = "v1.5.9"
}
description = {
   summary = "Functional Programming helper functions for Lua.",
   detailed = [[
    Functional Programming and list comprehension helper functions for Lua.
    Borrowed many array/list comprehensions from Lodash as well as various predicates.
    All functions that have more than 1 argument are curried by default.
   ]],
   homepage = "https://jesterxl.github.io/lua-fp/doc/index.html",
   license = "MIT",
   maintainer = "Jesse Warden <jesterxl@jessewarden.com>"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
       luafp = 'lua-fp-1.5.9/src/luafp.lua'
   },
   copy_directories = { "lua-fp-1.5.9/doc", "lua-fp-1.5.9/test", "lua-fp-1.5.9/src" }
}