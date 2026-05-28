package = "illarn-utils"
version = "1.0.0-7"
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
      ["illarn-utils.class_name"] = "illarn-utils/class_name.lua",
      ["illarn-utils.deep_copy"] = "illarn-utils/deep_copy.lua",
      ["illarn-utils.logger"] = "illarn-utils/logger.lua",
      ["illarn-utils.pool"] = "illarn-utils/pool.lua",
      ["illarn-utils.stringifier"] = "illarn-utils/stringifier.lua",
      ["illarn-utils.vararg_concat"] = "illarn-utils/vararg_concat.lua",
      ["illarn-utils.weak_reference"] = "illarn-utils/weak_reference.lua"
   }
}
