package = "lua-stormlib"
version = "0.1.6-1"
source = {
   url = "git+https://github.com/nvs/lua-stormlib.git",
   tag = "v0.1.6"
}
description = {
   summary = "A Lua binding to StormLib",
   homepage = "https://github.com/nvs/lua-stormlib",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      stormlib = {
         incdirs = {
            "lib/compat-5.3/c-api",
            "lib/stormlib"
         },
         libraries = {
            "storm"
         },
         sources = {
            "src/init.c",
            "src/common.c",
            "src/file.c",
            "src/finder.c",
            "src/handles.c",
            "src/mpq.c",
            "lib/compat-5.3/c-api/compat-5.3.c"
         }
      }
   }
}
