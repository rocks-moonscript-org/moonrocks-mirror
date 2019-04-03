package = "Lux"
version = "0.2.1-1"
source = {
   url = "git+https://github.com/IgorMael/Lux.git"
}
description = {
   summary = "Redux on Lua",
   detailed = "Redux on Lua",   
   homepage = "https://github.com/IgorMael/Lux",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
}
build = {
   type = "builtin",
   modules = {
      apply_middleware = "src/apply_middleware.lua",
      ["deps.compose"] = "src/deps/compose.lua",
      ["deps.deepcopy"] = "src/deps/deepcopy.lua",
      ["deps.fun"] = "src/deps/fun.lua",
      lux = "src/lux.lua"
   },
   copy_directories = {
      "docs"
   }
}
