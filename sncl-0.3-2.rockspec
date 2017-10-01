package = "sncl"
version = "0.3-2"

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
      ["sncl.sncl"] = "sncl/sncl.lua",
      ["sncl.utils.utils"] = "sncl/utils/utils.lua",
      ["sncl.grammar.grammar_parser"] = "sncl/grammar/grammar_parser.lua",
      ["sncl.grammar.util_parse"] = "sncl/grammar/util_parse.lua",

      ["sncl.model.macro"] = "sncl/model/macro.lua",

      ["sncl.model.connector"] = "sncl/model/connector.lua",

      ["sncl.model.port"] = "sncl/model/port.lua",

      ["sncl.model.link"] = "sncl/model/link.lua",
      ["sncl.model.action"] = "sncl/model/action.lua",
      ["sncl.model.condition"] = "sncl/model/condition.lua",
      ["sncl.model.elemento"] = "sncl/model/elemento.lua",
   },
   install = {
      bin = {"bin/sncl"}
   }
}


