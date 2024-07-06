---@diagnostic disable: lowercase-global
package = "cmd4lua"
version = "0.7.1-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/cmd4lua.git",
  tag = "v0.7.1",
}

description = {
  summary = "A library for convenient and quick creation of command handlers",
  detailed = [[
    Cmd4Lua is a Lua library that provides the ability to quickly and conveniently
    write complex command handlers for CLI-like applications.

    Add supports for nested commands, options and arguments.
    Allow you to write code in a simple and framework style.
    With automatic building of help and its display in case of incorrect input.
   ]],
  homepage = "https://gitlab.com/lua_rocks/cmd4lua",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
  -- optional "dprint"
}

build = {
  type = "builtin",
  modules = {
    ["cmd4lua"] = "src/cmd4lua/cmd4lua.lua",
    ["cmd4lua.base"] = "src/cmd4lua/base.lua",
    ["cmd4lua.builtin"] = "src/cmd4lua/builtin.lua",
    ["cmd4lua.parser"] = "src/cmd4lua/parser.lua",
    ["cmd4lua.settings"] = "src/cmd4lua/settings.lua",
    ["cmd4lua.help.builder"] = "src/cmd4lua/help/builder.lua",
    ["cmd4lua.help.collector"] = "src/cmd4lua/help/collector.lua",
    ["cmd4lua.utils.str"] = "src/cmd4lua/utils/str.lua"
  },

  copy_directories = {
    'doc',
    'examples',
  }
}
