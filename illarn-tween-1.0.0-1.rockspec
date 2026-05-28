package = "illarn-tween"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/illarn/lua-tween.git"
}
description = {
   detailed = "A lua 5.4.3 and luajit 2.1.1 compatible tweening library that provides property interpolation with easing, parallel/sequential chaining and loop support.",
   homepage = "https://github.com/illarn/lua-tween",
   license = "GPLv3"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["git.modules.logger"] = ".git/modules/logger.lua",
      ["lua-utils.class_name"] = "lua-utils/class_name.lua",
      ["lua-utils.deep_copy"] = "lua-utils/deep_copy.lua",
      ["lua-utils.logger"] = "lua-utils/logger.lua",
      ["lua-utils.stringifier"] = "lua-utils/stringifier.lua",
      ["lua-utils.vararg_concat"] = "lua-utils/vararg_concat.lua",
      tween = "tween.lua"
   },
}
