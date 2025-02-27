-- rockspecs/lua-lenses-0.1-1.rockspec

package = "lua-lenses"
version = "0.1-1"
source = {
   url = "https://github.com/HellFire0x/lua-lenses/archive/refs/tags/v0.1.zip",
   tag = "v0.1"
}
description = {
   summary = "A powerful lens library for nested Lua tables",
   detailed = [[
      lua-lenses provides composable, functional-style access and updates 
      to nested Lua tables. It supports advanced features like:
      - String path splitting ("foo.bar.baz")
      - Dynamic key functions
      - Strict vs. silent error handling
      - Optional creation of missing sub-tables
      - Wildcard (array) updates
      - Immutable (copy-based) or in-place mutations
      - Rich composition for building complex data paths
   ]],
   homepage = "https://github.com/HellFire0x/lua-lenses",
   license = "MIT"
}
dependencies = {
   -- If you need any other libraries, specify here (none needed by default)
}
build = {
   type = "builtin",
   modules = {
      ["lenses"] = "lenses.lua"
   }
}
