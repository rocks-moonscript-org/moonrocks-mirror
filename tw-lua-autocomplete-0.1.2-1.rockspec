package = "tw-lua-autocomplete"
version = "0.1.2-1"
source = {
   url = "git+https://github.com/Warhammer-Mods/tw-lua-autocomplete",
   tag = "v0.1.2"
}
description = {
   summary = [[
Provides definitions for Total War games Lua API: types, static objects, functions, etc.
]],
   detailed = [[
Provides definitions for Total War games Lua API: types, static objects, functions, etc.
]],
   homepage = "https://github.com/Warhammer-Mods/tw-lua-autocomplete",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      alias = "alias.lua",
      custom_effects = "custom_effects.lua",
      dumps = "dumps.lua",
      listeners = "listeners.lua",
      prop_joe = "prop_joe.lua",
      tw_lua_types = "tw_lua_types.lua",
      uimf = "uimf.lua",
      warhammer_2 = "warhammer_2.lua"
   }
}
