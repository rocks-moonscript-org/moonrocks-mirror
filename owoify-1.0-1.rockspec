package = "owoify"
version = "1.0-1"
source = {
   url = "git+https://github.com/ttwizz/owoify.git"
}
description = {
   summary = "The ultimate OwOifying utility for Lua.",
   detailed = "Translates English and Russian text to OwO.",
   homepage = "https://github.com/ttwizz/owoify",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      owoify = "src/owoify.lua"
   }
}