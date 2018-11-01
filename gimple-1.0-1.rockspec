package = "Gimple"
version = "1.0-1"
source = {
   url = "git://github.com/therainingmonkey/gimple.git"
}
description = {
   summary = "A wrapper script to simplify some git commands",
   homepage = "https://github.com/therainingmonkey/gimple",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      gimple = "gimple.lua"
   },
   install = {
      bin = {
         gimple = "gimple.lua",
      }
   }
}
