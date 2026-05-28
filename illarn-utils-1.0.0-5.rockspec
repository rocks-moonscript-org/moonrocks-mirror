package = "illarn-utils"
version = "1.0.0-5"
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
      ["illarn-utils.class_name"] = "src/class_name.lua",
      ["illarn-utils.deep_copy"] = "src/deep_copy.lua",
      ["illarn-utils.logger"] = "src/logger.lua",
      ["illarn-utils.pool"] = "src/pool.lua",
      ["illarn-utils.stringifier"] = "src/stringifier.lua",
      ["illarn-utils.vararg_concat"] = "src/vararg_concat.lua",
      ["illarn-utils.weak_reference"] = "src/weak_reference.lua"
   }
}
