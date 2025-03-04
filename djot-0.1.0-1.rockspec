rockspec_format = "3.0"
package = "djot"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/jgm/djot",
    tag = "0.1.0"
}
description = {
   summary = "Djot light markup parser",
   detailed = [[
     Djot is a light markup format and a library and program
     that parses it.
   ]],
   homepage = "https://github.com/jgm/djot",
   license = "MIT",
   issues_url = "https://github.com/jgm/djot/issues",
   maintainer = "John MacFarlane <jgm@berkeley.edu>"
}
dependencies = {
   "lua >= 5.1",
}
test_dependencies = {
   "lua >= 5.1",
   "luafilesystem >= 1.8"
}
build = {
   type = "builtin",
   modules = {
         ["djot"]                 = "djot.lua",
         ["djot.match"]           = "djot/match.lua",
         ["djot.attributes"]      = "djot/attributes.lua",
         ["djot.inline"]          = "djot/inline.lua",
         ["djot.block"]           = "djot/block.lua",
         ["djot.ast"]             = "djot/ast.lua",
         ["djot.emoji"]           = "djot/emoji.lua",
         ["djot.html"]            = "djot/html.lua",
   },
   install = {
       bin = {
         ["djot"]                 = "bin/main.lua",
       }
   }
}
