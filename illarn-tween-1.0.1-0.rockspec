package = "illarn-tween"
version = "1.0.1-0"
source = {
   url = "git+https://github.com/illarn/lua-tween.git"
}
description = {
   detailed = "Tweening library that provides property interpolation with easing, parallel/sequential chaining and loop support.\n Check out the github page for a detailed setup and usage guide",
   homepage = "https://github.com/illarn/lua-tween",
   license = "GPLv3"
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "illarn-utils ~> 1.0",
}
build = {
   type = "builtin",
   modules = {
      ["illarn.tween"] = "illarn/tween.lua"
   },
}
