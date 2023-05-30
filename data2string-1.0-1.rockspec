package = "Data2String"
version = "1.0-1"
source = {
   url = "git+https://github.com/robertlzj/Data2String"
}
description = {
   summary = "Fast Lua serializer with data in any struct.",
   detailed = "see README.MD",
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
