rockspec_format = "3.0"
package = "lua-casclib"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/nvs/lua-casclib.git",
   tag = "v0.1.0"
}
description = {
   summary = "A Lua binding to CascLib",
   homepage = "https://github.com/nvs/lua-casclib",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      casclib = {
         incdirs = {
            "lib/compat-5.3/c-api"
         },
         libraries = {
            "casc"
         },
         sources = {
            "src/common.c",
            "src/init.c",
            "src/file.c",
            "src/finder.c",
            "src/registry.c",
            "src/storage.c",
            "lib/compat-5.3/c-api/compat-5.3.c"
         }
      }
   }
}
