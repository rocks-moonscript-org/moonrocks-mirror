rockspec_format = "3.0"  -- required for test_dependencies (luarocks >= 3.0)
package = "voxgig-struct"
version = "0.1.0-1"
-- git+https (GitHub dropped the unauthenticated git:// protocol in 2022).
-- `tag` pins the install to the released revision — bump it in lockstep with
-- `version` above. `dir`: luarocks clones the monorepo into `struct/`, and the
-- Lua port lives in its `lua/` subdir, so the build root is `struct/lua`.
source = {
   url = "git+https://github.com/voxgig/struct.git",
   tag = "lua/v0.1.0",
   dir = "struct/lua"
}
description = {
   summary = "Utility functions for JSON-like data structures",
   detailed = [[
      Utility functions to manipulate in-memory JSON-like data structures.
      Includes functions for walking, merging, transforming, and validating data.
   ]],
   homepage = "https://github.com/voxgig/struct",
   license = "MIT"
}
-- Zero third-party runtime dependencies — src/struct.lua + src/regex.lua use
-- only the Lua standard library. busted/luassert (assertions) and dkjson/
-- luafilesystem (corpus loading + file ops) are needed ONLY by the test
-- harness, so they belong in test_dependencies, NOT here — otherwise every
-- `luarocks install voxgig-struct` would drag in the whole test stack.
dependencies = {
   "lua >= 5.3"
}
test_dependencies = {
   "busted >= 2.0.0",
   "luassert >= 1.8.0",
   "dkjson >= 2.5",
   "luafilesystem >= 1.8.0"
}
build = {
   type = "builtin",
   -- Namespaced under voxgig.* so the public module is `require("voxgig.struct")`
   -- (a bare `struct`/`regex` would collide with existing LuaRocks modules).
   -- regex is struct's private RE2-subset engine, scoped as a submodule rather
   -- than a top-level name; both must ship or the regex matchers degrade to nil.
   modules = {
      ["voxgig.struct"] = "src/struct.lua",
      ["voxgig.struct.regex"] = "src/regex.lua"
   },
   copy_directories = {"test"}
}
