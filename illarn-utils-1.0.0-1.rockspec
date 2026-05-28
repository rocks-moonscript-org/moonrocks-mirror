package = "illarn-utils"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/illarn/lua-utils.git"
}
description = {
   summary = "All of the scripts were tested on lua 5.4.3 and luajit 2.1.1",
   detailed = [[
All of the scripts were tested on lua 5.4.3 and luajit 2.1.1
]],
   homepage = "https://github.com/illarn/lua-utils",
   license = ""
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      class_name = "class_name.lua",
      deep_copy = "deep_copy.lua",
      logger = "logger.lua",
      pool = "pool.lua",
      stringifier = "stringifier.lua",
      vararg_concat = "vararg_concat.lua",
      weak_reference = "weak_reference.lua"
   }
}
