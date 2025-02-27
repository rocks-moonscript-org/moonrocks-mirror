package = "astra"
version = "1.0.0-1"
source = {
   url = "file:///home/astra/lua_test/astra/astra-1.0.0/astra-1.0.0-1.tar.gz",
   tag = "v1.0.0-1" 
}
description = {
   summary = "A statistical computation library for Lua",
   detailed = [[
      Astra is a Lua library that provides various statistical functions such as mean, median, standard deviation, and more.
   ]],
   homepage = "https://github.com/Astra-Zhi/astra",
   license = "MIT",
   maintainer = "astra <1572528939@qq.com>"
}
dependencies = {

   "lua >= 5.3"
}
build = {
   type = "builtin",  
   modules = {
      astra = "src/astra.lua", 
      ["astra.init"] = "src/init.lua" 
   },
   install = {
      bin = {}, 
      lib = {},  
      lua = {  
         ["astra"] = "src/astra.lua",
         ["astra.init"] = "src/init.lua"
      }
   }
}