package = "require"
version = "0.1.4-2"
source = {
   url = "git://github.com/pygy/require.lua.git",
   tag = "v0.1.4"
}

description = {
   summary = "`require()` rewritten in plain Lua",
   detailed = [[
`require()` rewritten in plain Lua.
Lua 5.1 and 5.2 semantics are supported.
]],
   homepage = "https://github.com/pygy/require.lua",
   license = "MIT/X11"
}

dependencies = {
   "lua ~> 5.1, ~> 5.2"
}

build = {
  type = "builtin",
  modules = {
    require = "require.lua"
  }
}

