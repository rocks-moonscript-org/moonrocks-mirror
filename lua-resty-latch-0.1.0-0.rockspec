package = "lua-resty-latch"
version = "0.1.0-0"
source = {
   url = "git://github.com/fesily/lua-resty-latch.git"
}
description = {
   summary = "single-use thread barrier",
   homepage = "https://github.com/fesily/lua-resty-latch",
   license = "MIT",
   maintainer = "Bing Han(fesil@foxmail.com)"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["resty.latch"] = "lib/resty/latch.lua",
   }
}