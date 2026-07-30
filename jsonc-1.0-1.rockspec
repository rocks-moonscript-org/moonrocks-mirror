package = "jsonc"
version = "1.0-1"
source = {
   url = "git+https://github.com/Joao-Feijao/My-JSONC-Lua-Module"
}
description = {
   summary = "A JSON engine made in pure Lua with file management, I/O management, utility functions and lexical path query.",
   detailed = [[
      JSONC is a bidirectional serialization infrastructure compatible with Lua 5.1 through 5.5 and LuaJIT.
      It features sandboxing via `_ENV`, asynchronous memory management using hidden upvalues ​​and weak tables,
      a static normalizer for duplicate keys, and a deep query system via `load()`
      that polymorphically accepts complex multidimensional paths (e.g., `self.tags` or `self.value`).
   ]],
   homepage = "https://github.com/Joao-Feijao/My-JSONC-Lua-Module",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      jsonc = "init.lua"
   }
}