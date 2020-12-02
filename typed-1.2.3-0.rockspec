package = "typed"
version = "1.2.3-0"
source = {
   url = "git://github.com/SovietKitsune/typed",
   tag = "v1.2.3"
}
description = {
   summary = "Typed is a module to aid in allowing for typed code",
   detailed = "Typed gives clean errors that look like errors from misused standard functions",
   homepage = "https://github.com/SovietKitsune/typed",
   license = "MIT"
}
dependencies = {
   "middleclass"
}
build = {
   type = "builtin",
   modules = {
      typed = "typed.lua"
   }
}
