package = "Data2String"
version = "1.3-1"
source = {
   url = "git+https://github.com/robertlzj/Data2String",
   tag = "v1.3",
}
description = {
   summary = "Serialize data Fast in any struct to string. Clear view through complex reference.",
   detailed = "Feature, Configure, Performance, Demo see README.MD",
   homepage = "https://github.com/robertlzj/Data2String",
   license = "GPL-3.0"
}
dependencies = {
   "lua >= 5.3"
   -- If you depend on other rocks, add them here
}
build = {
   type = "builtin",
   modules = {
      Bench = "Bench.lua",
      Data2String = "Data2String.lua",
      Test = "Test.lua",
   }
}
