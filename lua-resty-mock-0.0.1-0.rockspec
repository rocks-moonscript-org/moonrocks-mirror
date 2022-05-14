package = "lua-resty-mock"
version = "0.0.1-0"
source = {
   url = "git://github.com/fesily/lua-resty-mock.git"
}
description = {
   summary = "mock openresty(nginx) C api for test framework",
   homepage = "https://github.com/fesily/lua-resty-mock",
   license = "Apache 2.0",
   maintainer = "Bing Han(fesil@foxmail.com)"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["resty.mock.shdict"] = "lib/resty/mock/shdict.lua",
   }
}