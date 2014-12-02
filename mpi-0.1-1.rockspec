package = "mpi"
version = "0.1-1"
source = {
   url = "git://git.colberg.org/lua-mpi",
   tag = "0.1",
}
description = {
   summary = "MPI for Lua",
   detailed = [[
      MPI for Lua provides bindings for the Message Passing Interface (MPI).
      LuaJIT is a just-in-time compiler for the Lua language that provides
      native C data structures through its foreign function interface (FFI)
      library. MPI for Lua supports MPI-2.1, MPI-2.2 and MPI-3.0 using
      Open MPI or MPICH and LuaJIT.
   ]],
   homepage = "http://colberg.org/lua-mpi/",
   license = "MIT/X11",
}
build = {
   type = "make",
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
