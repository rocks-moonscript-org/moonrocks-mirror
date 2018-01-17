package = "lua-fp"
version = "1.5-16"
source = {
   url = "https://github.com/JesterXL/lua-fp",
   dir = 'lua-fp-v1.5.16',
   tag = 'v1.5.16'
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
    ['luafp.array'] = 'luafp/array.lua',
    ['luafp.collection'] = 'luafp/collection.lua',
    ['luafp.func'] = 'luafp/func.lua',
    ['luafp.object'] = 'luafp/object.lua',
    ['luafp.predicates'] = 'luafp/predicates.lua',
    ['luafp.reactive'] = 'luafp/reactive.lua',
    ['luafp.util'] = 'luafp/util.lua'
   },
   copy_directories = {
      "doc", "tests"
   }
}