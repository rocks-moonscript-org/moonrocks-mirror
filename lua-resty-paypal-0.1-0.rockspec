package = "lua-resty-paypal"
version = "0.1-0"
source = {
   url = "git://github.com/paragasu/lua-resty-paypal",
   tag = "v0.1-0"
}
description = {
   summary  = "Simple lua wrapper for paypal REST api",
   homepage = "https://github.com/paragasu/lua-resty-paypal",
   license  = "MIT",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson",
   "lua-resty-http"
}
build = {
   type = "builtin",
   modules = {
      ["resty.paypal"] = "paypal.lua",
   }
}
