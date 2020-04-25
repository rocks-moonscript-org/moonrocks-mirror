package = "ltl"
version = "0.1-6"
source = {
   url = "git://github.com/jperon/ltl",
   tag = "v0.1b"
}
description = {
   homepage = "https://github.com/jperon/ltl",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "argparse",
   "copas",
   "copas-async",
   "lpeg",
   "moonscript"
}
build = {
   type = "command",
   build_command = "moonc *.moon && cp ltl.lua ltl",
   modules = {
      ltl = "ltl.lua"
   },
   install = {
      bin = { "ltl" }
   }
}
