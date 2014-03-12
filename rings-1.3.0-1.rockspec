package = "Rings"
version = "1.3.0-1"
source = {
   url = "https://github.com/keplerproject/rings/archive/v_1_3_0.zip",
   md5 = "afc8fd2ed3fa62d3e11828f2c8a9184f",
   dir = "rings-v_1_3_0"
}
description = {
   summary = "Create new Lua states from within Lua",
   detailed = [[
      Rings is a library which provides a way to create new Lua states
      from within Lua. It also offers a simple way to communicate
      between the creator (master) and the created (slave) states.
   ]],
   homepage = "http://www.keplerproject.org/rings/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      rings = "src/rings.c",
      stable = "src/stable.lua"
   },
   copy_directories = {
      "doc", "tests"
   }
}
