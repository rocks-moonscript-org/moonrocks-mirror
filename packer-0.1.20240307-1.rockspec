package = 'packer'
version = '0.1.20240307-1'
source = {
   url = 'git+file:///tmp/lua-packer.git',
   tag = '0.1.20240307'
}
description = {
   summary = 'Lua object serialize library',
   detailed = [[
   	serialize Lua object to string, then restore
   ]],
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["packer"] = {
         sources = { "lua-packer.c" },
      }
   }
}
