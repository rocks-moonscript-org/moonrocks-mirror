package = "illarn-tween"
version = "1.0.0-3"
source = {
   url = "git+https://github.com/illarn/lua-tween.git"
}
description = {
   detailed = "A lua 5.4.3 and luajit 2.1.1 compatible tweening library that provides property interpolation with easing, parallel/sequential chaining and loop support.",
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
      tween = "tween.lua"
   },
}
