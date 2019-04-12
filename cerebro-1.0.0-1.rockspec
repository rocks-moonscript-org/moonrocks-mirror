package = "cerebro"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/mrtnpwn/cerebro.git"
}
description = {
   summary = "A tiny Brainfuck dialect in pure Lua.",
   homepage = "https://github.com/mrtnpwn/cerebro",
   license = "Unlicense"
}
dependencies = {
   "penlight >= 1.5.4"
}
build = {
   type = "builtin",
   modules = {
      cerebro = "cerebro.lua"
   },
   install = {
      bin = {
         ["cbc"] = "cbc.lua"
      }
   }
}
