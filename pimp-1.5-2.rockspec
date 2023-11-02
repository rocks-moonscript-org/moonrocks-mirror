package = "pimp"
version = "1.5-2"

source = {
  url = "git+https://github.com/uriid1/pimp-lua.git",
}

description = {
  summary = "Pimp Module for Lua Debugging",
  detailed = [[
    The Pimp module designed to aid in debugging and logging by providing functions to print and format information about function calls, arguments, and more. It offers a simple way to enhance the debugging process in your Lua applications.
  ]],
  homepage = "https://github.com/uriid1/pimp-lua",
  license = "MIT"
}


dependencies = {
 "lua >= 5.1",
 "luafilesystem >= 1.8.0",
}

build = {
  type = "builtin",
  modules = {
    [package] = package.."/init.lua",
    [package..".color"] = package.."/color.lua",
    [package..".write"] = package.."/write.lua",
    [package..".pretty-print"] = package.."/pretty-print.lua",
    [package..".constructor"] = package.."/constructor.lua",
    [package..".string-format"] = package.."/string-format.lua",

    [package..".classes.Cdata"] = package.."/classes/Cdata.lua",
    [package..".classes.String"] = package.."/classes/String.lua",
    [package..".classes.Userdata"] = package.."/classes/Userdata.lua",
    [package..".classes.Function"] = package.."/classes/Function.lua",
    [package..".classes.Boolean"] = package.."/classes/Boolean.lua",
    [package..".classes.Number"] = package.."/classes/Number.lua",
    [package..".classes.Table"] = package.."/classes/Table.lua",
    [package..".classes.Thread"] = package.."/classes/Thread.lua",
    [package..".classes.Unknown"] = package.."/classes/Unknown.lua",
    [package..".classes.Nil"] = package.."/classes/Nil.lua",
  }
}