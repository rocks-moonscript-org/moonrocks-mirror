package = "lua-resty-execvp"
version = "0.1.0-1"
source = {
   url = "https://github.com/3scale/lua-resty-execvp/archive/v0.1.0-1.tar.gz",
   md5 = "1372ce12a94f261d49cefa34fc4f2d3e",
   dir = "lua-resty-execvp-0.1.0-1",
}
description = {
   summary = "lua-resty-execvp - execvp FFI wrapper",
   detailed = "lua-resty-execvp - FFI wrapper to call exec and replace current process",
   homepage = "https://github.com/3scale/lua-resty-execvp",
   license = "Apache License 2.0"
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["resty.execvp"] = "src/resty/execvp.lua"
   }
}
