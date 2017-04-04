local detailed = [[
This library provides contextual talents seen as decorators, so you
can decorate seamlessly certain objects from any OO library for Lua.
]]

package = "talents"
version = "0.1-1"

source = {
   url = "git://github.com/marcoonroad/talents",
   tag = "v0.1-1",
}

description = {
   summary  = "Pluggable contextual talents implementation for Lua.",
   detailed = detailed,
   homepage = "http://github.com/marcoonroad/talents",
   license  = "MIT/X11",
}

dependencies = {
   "lua >= 5.1, < 5.4",
}

build = {
   type = "builtin",

   modules = {
      [ "talents" ]                     = "src/talents/init.lua",
      [ "talents.pluggable" ]           = "src/talents/pluggable.lua",
      [ "talents.internals.selective" ] = "src/talents/internals/selective.lua",
      [ "talents.internals.reason" ]    = "src/talents/internals/reason.lua",
      [ "talents.internals.token" ]     = "src/talents/internals/token.lua",
      [ "talents.internals.weak" ]      = "src/talents/internals/weak.lua",
      [ "talents.internals.default" ]   = "src/talents/internals/default.lua",
   },
}
