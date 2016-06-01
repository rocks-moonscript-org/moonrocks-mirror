package = "std.normalize"
version = "1.0.1-2"

description = {
  summary = "Normalized Lua Functions",
  detailed = [[
    This module can inject deterministic versions of core Lua
    functions that do not behave identically across all supported Lua
    implementations into your module's lexical environment.  Each
    function is as thin and fast a version as is possible in each Lua
    implementation, evaluating to the Lua C implementation with no
    overhead when semantics allow.
  ]],
  homepage = "https://lua-stdlib.github.io/normalize",
  license = "MIT/X11",
}

source = {
  url = "http://github.com/lua-stdlib/normalize/archive/v1.0.1.zip",
  dir = "normalize-1.0.1",
}

dependencies = {
  "lua >= 5.1, < 5.4",
}

build = {
  type = "builtin",
  modules = {
    ["std.normalize"]		= "lib/std/normalize/init.lua",
    ["std.normalize._base"]	= "lib/std/normalize/_base.lua",
    ["std.normalize._debug"]	= "lib/std/normalize/_debug.lua",
    ["std.normalize._strict"]	= "lib/std/normalize/_strict.lua",
    ["std.normalize._typecheck"]= "lib/std/normalize/_typecheck.lua",
    ["std.normalize.version"]	= "lib/std/normalize/version.lua",
  },
}
