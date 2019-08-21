package = "Lua-Lander"
version = "1.0-1"
source = {
   url = "git+ssh://git@github.com/skrolikowski/Lua-Lander.git"
}
description = {
   summary = 'Lua-Lander',
   detailed = [[
      A modern utility library for Lua, offering tons of supplemental goodness for your projects.
   ]],
   homepage = "http://shanekrolikowski.com/Lua-Lander/",
   license = "MIT <http://opensource.org/licenses/MIT>"
}
build = {
   type = "builtin",
   modules = {
      ["lua-lander"]                = "init.lua",
      ["lua-lander.mods.array"]     = "mods/array.lua",
      ["lua-lander.mods.assert"]    = "mods/assert.lua",
      ["lua-lander.mods.color"]     = "mods/color.lua",
      ["lua-lander.mods.event"]     = "mods/event.lua",
      ["lua-lander.mods.func"]      = "mods/func.lua",
      ["lua-lander.mods.lang"]      = "mods/lang.lua",
      ["lua-lander.mods.math"]      = "mods/math.lua",
      ["lua-lander.mods.number"]    = "mods/number.lua",
      ["lua-lander.mods.string"]    = "mods/string.lua",
      ["lua-lander.mods.table"]     = "mods/table.lua",
      ["lua-lander.mods.util"]      = "mods/util.lua",
      ["lua-lander.mods.variables"] = "mods/variables.lua",
   }
}
dependencies = {
   "lua >= 5.1",
   "lpeg >= 0.10-1"
}