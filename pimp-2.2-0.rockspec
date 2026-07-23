package = "pimp"
version = "2.2-0"

source = {
  url = "git+https://github.com/uriid1/pimp-lua.git",
  tag = "v2.2.0"
}

description = {
  summary = "Module for Lua pretty print and debugging",
  detailed = [[
    Module for pretty-printing tables and text, as well as for simple debugging using Lua's built-in debug methods. The main goal of the module is to replace print with a more advanced tool.
  ]],
  homepage = "https://github.com/uriid1/pimp-lua",
  license = "MIT"
}

dependencies = {
 "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    [package] = package.."/init.lua",
    [package..".config"] = package.."/config.lua",
    [package..".debug"] = package.."/debug.lua",
    [package..".color"] = package.."/color.lua",
    [package..".colorscheme.default"] = package.."/colorscheme/default.lua",
    [package..".write"] = package.."/write.lua",
    [package..".pretty_print"] = package.."/pretty_print.lua",
    [package..".constructor"] = package.."/constructor.lua",
    [package..".string_format"] = package.."/string_format.lua",
    [package..".utils.buffer"] = package.."/utils/buffer.lua",
    [package..".utils.make_path"] = package.."/utils/make_path.lua",
    [package..".utils.source_names"] = package.."/utils/source_names.lua",
    [package..".enums.metamethods"] = package.."/enums/metamethods.lua",
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
