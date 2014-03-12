package = "gcc-lua-cdecl"
version = "1.2.0-1"
source = {
   url = "git://git.colberg.org/gcc-lua-cdecl",
   tag = "1.2.0",
}
description = {
   summary = "C declaration composer for the GCC Lua plugin",
   detailed = [[
      gcc-lua-cdecl is a Lua module for composing C declarations from a C
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
   modules = {
      ["gcc.cdecl"] = "gcc/cdecl.lua",
   },
}
