package = "virtes"
version = "0.1.2-1"
source = {
   url = "git+https://github.com/notomo/virtes.nvim.git",
   tag = "v0.1.2"
}
description = {
   summary = "neovim visual regression test library",
   detailed = "",
   homepage = "https://github.com/notomo/virtes.nvim",
   license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["virtes.context"] = "lua/virtes/context.lua",
      ["virtes.diff"] = "lua/virtes/diff.lua",
      ["virtes.init"] = "lua/virtes/init.lua",
      ["virtes.lib.path"] = "lua/virtes/lib/path.lua",
      ["virtes.result"] = "lua/virtes/result.lua",
      ["virtes.test"] = "lua/virtes/test.lua"
   }
}
