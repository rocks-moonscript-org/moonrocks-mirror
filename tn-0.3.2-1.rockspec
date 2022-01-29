rockspec_format = "1.0"
package = "tn"
version = "0.3.2-1"
source = {
   url = "git://github.com/gorjusborg/tn",
   tag = "v0.3.2"
}
description = {
   homepage = "https://brandon.acknsyn.com/tn",
   license = "MIT <http://opensource.org/licenses/MIT>"
}
build = {
   type = "builtin",
   modules = {
      ["tn.cli"] = "tn/cli.lua",
      ["tn.core"] = "tn/core.lua",
      ["tn.runner"] = "tn/runner.lua",
      ["tn.version"] = "tn/version.lua"
   },
   install = {
      bin = {
         ["tn"] = "bin/tn.lua"
      }
   }
}
dependencies = {
  "lua >= 5.1",
  "fun >= 0.1.3-1",
  "luafilesystem >= 1.8.0-1"
}
