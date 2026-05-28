package = "illarn-utils"
version = "1.0.0-9"
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
      ["illarn.class_name"] = "illarn/class_name.lua",
      ["illarn.deep_copy"] = "illarn/deep_copy.lua",
      ["illarn.logger"] = "illarn/logger.lua",
      ["illarn.pool"] = "illarn/pool.lua",
      ["illarn.stringifier"] = "illarn/stringifier.lua",
      ["illarn.vararg_concat"] = "illarn/vararg_concat.lua",
      ["illarn.weak_reference"] = "illarn/weak_reference.lua"
   }
}
