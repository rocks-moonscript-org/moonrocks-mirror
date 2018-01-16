package = "lua-fp"
version = "1.5-10"
source = {
   url = "https://github.com/JesterXL/lua-fp/archive/v1.5.10.tar.gz",
   tag = "v1.5.10",
   dir = 'lua-fp-v1.5.10'
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
       luafp = 'src/luafp.lua'
   },
   copy_directories = { "doc", "test", "src" }
}