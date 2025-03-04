package = "lualibrarytemplate"
version = "1.0-1"

source = {
    url = "https://github.com/Tieske/Lua_library_template/archive/version_1.0.tar.gz",
    dir = "Lua_library_template-version_1.0"
}
description = {
   summary = "Lua template for C libraries",
   detailed = [[
      Quickly setup a new C library, using a fill-in-the-blanks
      aproach.
      This rock also contains a commandline script to create an
      instantaneously, compiling and working, module.
   ]],
   homepage = "https://github.com/Tieske/Lua_library_template",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.2",
   "luafilesystem",
   "datafile",
}
build = {
  type = "builtin",
  modules = {
    ["lualibrarytemplate.dummy"] = "dummy.lua",
  },
  copy_directories = { "template" },
  install = {
    bin = {
      luacmodule = "luacmodule.lua",
    }
  } 
}
