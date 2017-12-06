package = "sncl"
version = "0.4-0"

source = {
   url = "git://github.com/TeleMidia-MA/sncl.git"
}

description = {
   summary = "A tool that compiles sncl code to ncl",
   detailed = [[
   TO-DO: Descricao mais detalhada
   ]],
   homepage = "https://github.com/TeleMidia-MA/sNCL",
   maintainer = "Lucas de Macedo <lucastercas@gmail.com>",
   license = "GPL-3.0"
}

dependencies = {
   "lua >= 5.1",
   "lpeg",
   "luafilesystem",
   "ansicolors",
   "argparse",
}

build = {
   type = "builtin",
   modules = {
      ["main"]               = "src/main.lua",
      ["utils"]              = "src/utils/misc.lua",
      ["parser.grammar"]     = "src/parser/grammar.lua",
      ["parser.parse"]       = "src/parser/parse.lua",
      ["elements.require"]   = "src/elements/require.lua",
      ["elements.macro"]     = "src/elements/macro.lua",
      ["elements.connector"] = "src/elements/connector.lua",
      ["elements.port"]      = "src/elements/port.lua",
      ["elements.link"]      = "src/elements/link.lua",
      ["elements.action"]    = "src/elements/action.lua",
      ["elements.condition"] = "src/elements/condition.lua",
      ["elements.switch"] = "src/elements/switch.lua",
      ["elements.rule"] = "src/elements/rule.lua",
      ["elements.elemento"]  = "src/elements/elemento.lua",
   },
   install = {
      bin = {
         "src/bin/sncl"
      }
   }
}


