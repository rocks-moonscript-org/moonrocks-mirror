rockspec_format = "3.0"
package = "lls-addon-luafilesystem"
version = "1.8.0.1-1"
source = {
   url = "git+https://github.com/goldenstein64/lls-addon-luafilesystem",
   tag = "v1.8.0.1"
}
description = {
   summary = "LuaLS type definitions for LuaFileSystem library",
   homepage = "https://github.com/goldenstein64/lls-addon-luafilesystem",
   license = "MIT"
}
build = {
   type = "lls-addon",
   settings = {
      diagnostics = {
         globals = {
            "lfs"
         }
      }
   }
}
