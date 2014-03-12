package = "bit32"

version = "5.2.1.52-1"

source = {
   url = "https://raw.github.com/hishamhm/lua-compat-5.2/bitlib-5.2.2/lbitlib.c",
}

description = {
   summary = "Lua 5.2 bit manipulation library",
   detailed = [[
      This is a dummy rockspec to avoid dependency problems.
      This will not be necessary in future versions of LuaRocks.
   ]],
   license = "MIT/X11",
   homepage = "http://lua.org/work/",
}

dependencies = {
   "lua ~> 5.2"
}

build = {
   type = "builtin",
   modules = {
   }
}
