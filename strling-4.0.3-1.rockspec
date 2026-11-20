package = "strling"
version = "4.0.3-1" -- tooling/lua_rockspec.py materializes this field
source = {
   url = "git+https://github.com/strling-lang/strling.git",
   tag = "v4.0.3",
   dir = "strling/bindings/lua"
}
description = {
   summary = "Thin Lua adapter for the canonical STRling compiler",
   detailed = [[ STRling projects canonical request and result data through a caller-selected strling.c-abi v1 library. ]],
   homepage = "https://github.com/strling-lang/strling",
   license = "Apache-2.0"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "lua-cjson >= 2.1.0, < 3.0.0"
}
build = {
   type = "builtin",
   modules = {
      strling = "src/adapter.lua",
      ["strling.stdlib_generated"] = "src/stdlib_generated.lua",
      strling_native = {
         sources = { "src/strling_native.c" },
         libraries = { "dl" }
      }
   }
}
