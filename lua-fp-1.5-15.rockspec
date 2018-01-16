package = "lua-fp"
version = "1.5-15"
source = {
   url = "https://github.com/JesterXL/lua-fp/archive/v1.5.15.tar.gz",
   dir = 'lua-fp-v1.5.15'
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
    ['luafp.array'] = 'lua-fp-v1.5.15/luafp/array.lua',
    ['luafp.collection'] = 'lua-fp-v1.5.15/luafp/collection.lua',
    ['luafp.func'] = 'lua-fp-v1.5.15/luafp/func.lua',
    ['luafp.object'] = 'lua-fp-v1.5.15/luafp/object.lua',
    ['luafp.predicates'] = 'lua-fp-v1.5.15/luafp/predicates.lua',
    ['luafp.reactive'] = 'lua-fp-v1.5.15/luafp/reactive.lua',
    ['luafp.util'] = 'lua-fp-v1.5.15/luafp/util.lua'
   },
   copy_directories = {
      "doc", "tests"
   }
}