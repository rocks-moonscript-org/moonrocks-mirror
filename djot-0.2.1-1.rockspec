rockspec_format = "3.0"
package = "djot"
version = "0.2.1-1"
source = {
    url = "git+https://github.com/jgm/djot.lua",
    tag = "0.2.1"
}
description = {
   summary = "Djot light markup parser",
   detailed = [[
     Djot is a light markup format and a library and program
     that parses it.
   ]],
   homepage = "https://github.com/jgm/djot.lua",
   license = "MIT",
   issues_url = "https://github.com/jgm/djot.lua/issues",
   maintainer = "John MacFarlane <jgm@berkeley.edu>"
}
dependencies = {
   "lua >= 5.1"
}
test_dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
         ["djot"]                 = "djot.lua",
         ["djot.attributes"]      = "djot/attributes.lua",
         ["djot.inline"]          = "djot/inline.lua",
         ["djot.block"]           = "djot/block.lua",
         ["djot.ast"]             = "djot/ast.lua",
         ["djot.html"]            = "djot/html.lua",
         ["djot.filter"]          = "djot/filter.lua",
         ["djot.json"]            = "djot/json.lua",
   },
   install = {
       bin = {
         ["djot"]                 = "bin/main.lua",
       }
   }
}
