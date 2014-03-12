package="vararg"
version="1.0-1"
source = {
   url = "http://www.tecgraf.puc-rio.br/~maia/lua/vararg-1.0.tar.gz",
   md5 = "7546f1ba23380313a63947b7386c2e80",
}
description = {
   summary = "Manipulation of variable arguments",
   detailed = [[
      'vararg' is a Lua library for manipulation of variable arguments (vararg) of
      functions. These functions basically allows you to do things with vararg that
      cannot be efficiently done in pure Lua, but can be easily done through the C API.
   ]],
   homepage = "http://www.tecgraf.puc-rio.br/~maia/lua/vararg/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      vararg = {
         sources = "vararg.c",
      },
   },
}

