package = "lualinq"
version = "1.6-1"
source = {
    url = "git://github.com/djfdyuruiry/lualinq",
    tag = "1.6.1"
}
description = {
   summary = "Lightweight library which allows functional querying and transformation of lua arrays and objects",
   detailed = [[
      The syntax is very similar to the C# linq or Java 8 streams libraries, which are similar in syntax to SQL. It’s released with a BSD 3 clause license.
      
      See github readme for more information: https://github.com/djfdyuruiry/lualinq/blob/master/README.md
   ]],
   license = "BSD3",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      lualinq = "lualinq.lua"
   },
   copy_directories = {}
}