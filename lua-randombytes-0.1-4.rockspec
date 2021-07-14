package = "lua-randombytes"
version = "0.1-4"
source = {
   url = "git://github.com/githemiao/lua_randombytes",
   branch = "main"
}
description = {
   homepage = "https://github.com/githemiao/lua_randombytes",
   license = "MIT"
}
dependencies = {
   "luabitop",
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      randombytes = "randombytes.lua"
   }
}
