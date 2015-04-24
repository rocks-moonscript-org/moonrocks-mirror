package = "hdf5"
version = "2.0.0-1"
source = {
   url = "git://git.colberg.org/lua-hdf5",
   tag = "2.0.0",
}
description = {
   summary = "HDF5 for Lua",
   detailed = [[
      HDF5 for Lua provides bindings for the Hierarchical Data Format (HDF5),
      a file format and library for portable, flexible and efficient storage of
      numerical data. LuaJIT is a just-in-time compiler for the Lua language
      that provides native C data structures through its foreign function interface
      (FFI) library. HDF5 for Lua supports HDF5 1.8 using LuaJIT.
   ]],
   homepage = "http://colberg.org/lua-hdf5/",
   license = "MIT/X11",
}
build = {
   type = "make",
   build_target = "test",
   build_variables = {
      LUA = "$(LUA)",
   },
   install_variables = {
      PREFIX = "$(PREFIX)",
      LUADIR = "$(LUADIR)",
      DOCDIR = "$(PREFIX)/doc",
   },
   copy_directories = {
   },
}
