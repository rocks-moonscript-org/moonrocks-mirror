package = "Fio"
version = "1.0-1"
source = {
   url = "git://github.com/Sk1-z/Fio",
   tag = "v1.0"
}
description = {
   summary = "Easy file module for lua written in lua",
   detailed = "Fio provides multiple functions for file system operations and includes JSON operations",
   homepage = "https://github.com/Sk1-z/Fio"
}
dependencies = {
   -- List your dependencies here
    "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      Fio = "Fio.lua"
   }
}