package = "cerebro"
version = "1.1.0-1"
source = {
   url = "git+https://github.com/mrtnpwn/cerebro.git"
}
description = {
   summary = "A Brainfuck dialect that compiles to Lua.",
   homepage = "https://github.com/mrtnpwn/cerebro",
   license = "Unlicense"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      cerebro = "cerebro.lua"
   },
   install = {
      bin = {
         ["cerebro"] = "cerebro.lua"
      }
   }
}
