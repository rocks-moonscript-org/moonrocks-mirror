package = "lua-opencl"
version = "1.0.0-1"
source = {
   url = "git://git.colberg.org/lua-opencl",
   tag = "1.0.0",
}
description = {
   summary = "OpenCL for Lua",
   detailed = [[
      OpenCL for Lua provides bindings for the Open Compute Language (OpenCL),
      an open standard for cross-platform, parallel programming of GPUs, CPUs, and
      other processors. LuaJIT is a just-in-time compiler for the Lua language
      that provides native C data structures through its foreign function interface
      (FFI) library. OpenCL for Lua supports up to OpenCL 1.2 using LuaJIT.
   ]],
   homepage = "http://colberg.org/lua-opencl/",
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
