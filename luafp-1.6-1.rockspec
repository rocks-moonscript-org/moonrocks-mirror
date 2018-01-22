package = "luafp"
version = "1.6-1"
source = {
   url = "git://github.com/JesterXL/luafp",
   tag = "v1.6.1"
}
description = {
   summary = "Functional Programming and list comprehension helper functions for Lua.",
   detailed = [[
        Functional Programming and list comprehension helper functions for Lua.
        Borrowed many array/list comprehensions from Lodash as well as various predicates.
        All functions that have more than 1 argument are curried by default.

        API Documentation: https://jesterxl.github.io/luafp/doc/index.html
   ]],
   homepage = "https://github.com/JesterXL/luafp",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2, < 5.4"
}
build = {
   type = "builtin",
   modules = {
        ['luafp.array'] = 'luafp/array.lua',
        ['luafp.collection'] = 'luafp/collection.lua',
        ['luafp.func'] = 'luafp/func.lua',
        ['luafp.Maybe'] = 'luafp/Maybe.lua',
        ['luafp.object'] = 'luafp/object.lua',
        ['luafp.predicates'] = 'luafp/predicates.lua',
        ['luafp.reactive'] = 'luafp/reactive.lua',
        ['luafp.Result'] = 'luafp/Result.lua',
        ['luafp.util'] = 'luafp/util.lua'
   },
   copy_directories = { "doc", "spec" }
}