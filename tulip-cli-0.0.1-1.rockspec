package = "tulip-cli"
version = "0.0.1-1"
source = {
   url = "git+ssh://git@git.sr.ht/~mna/tulip-cli"
}
description = {
   summary = "Command-line assistant of the Lua web framework.",
   detailed = "Command-line assistant of the Lua web framework.",
   homepage = "https://git.sr.ht/~mna/tulip-cli",
   license = "BSD"
}
dependencies = {
   "lua >= 5.3, < 5.5",

   "base64 1.5-3",
   "luaposix 35.0-1",
   "luashell 0.4-1",
   "optparse 1.4-1",
}
build = {
   type = "builtin",
   modules = {
      ["src.cmds"] = "src/cmds/init.lua",
      ["src.cmds.initcmd"] = "src/cmds/initcmd.lua",
      ["src.main"] = "src/main.lua"
   },
   install = {
      bin = {
         ["tulip-cli"] = "tulip-cli.lua"
      }
   }
}
