package = "luajit-ffi-loader"
version = "1.0.0-0"
source = {
   url = "git+https://github.com/fesily/luajit-ffi-loader.git"
}
description = {
   homepage = "https://github.com/fesily/luajit-ffi-loader",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["ffi.loader"] = "ffi/loader.lua"
   }
}
