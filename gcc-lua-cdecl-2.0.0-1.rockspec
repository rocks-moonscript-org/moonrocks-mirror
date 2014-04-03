package = "gcc-lua-cdecl"
version = "2.0.0-1"
source = {
   url = "git://git.colberg.org/gcc-lua-cdecl",
   tag = "2.0.0",
}
description = {
   summary = "C declaration composer for the GNU Compiler Collection",
   detailed = [[
      cdecl for GCC is a Lua module that composes C declarations from a C
      source file using the Lua plugin for GCC. The module generates C99
      function, variable and type declarations, and supports the GCC extensions
      for attributes and vector types. The module may be used to generate C
      library bindings for a foreign function interface, e.g., LuaJIT FFI.
   ]],
   homepage = "http://colberg.org/gcc-lua-cdecl/",
   license = "MIT/X11",
}
build = {
   type = "builtin",
   install = {
      conf = {
         "ffi-cdecl/ffi-cdecl.h",
         "ffi-cdecl/ffi-cdecl-luajit.h",
      },
   },
   modules = {
      ["gcc.cdecl"] = "gcc/cdecl.lua",
      ["ffi-cdecl"] = "ffi-cdecl/ffi-cdecl.lua",
   },
}
