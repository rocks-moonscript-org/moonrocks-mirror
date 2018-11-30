package = "c-lua-package"
version = "1.0-1"
source = {
   url = "git://github.com/youxingx/c-lua-package.git",
   branch = "master"
}
description = {
   homepage = "https://github.com/youxingx/c-lua-package",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["c-lua"] = {
         sources = "src/c-lua.c"
      }
   }
}
