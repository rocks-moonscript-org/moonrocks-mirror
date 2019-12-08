package = "LuaClass"
version = "2.0-0"
source = {
   url = "git://github.com/niu2x/luaclass",
   tag = "v2.0",
}
description = {
   summary = "A lua class utils.",
   detailed = [[
      blablabla....
   ]],
   homepage = "http://github.com/niu2x/luaclass", -- We don't have one yet
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.3, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      class = 'src/class.lua',
   },

}