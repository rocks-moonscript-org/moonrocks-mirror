package = "lua-resty-url"
version = "0.3.4-1"
source = {
   url = "https://github.com/3scale/lua-resty-url/archive/v0.3.4.tar.gz",
   md5 = "3f317940b6898bcbb4a14de5525f99c2",
   dir = "lua-resty-url-0.3.4",
}
description = {
   summary = "lua-resty-url - URL parser",
   detailed = "lua-resty-url - URL parser using `ngx.re`",
   homepage = "https://github.com/3scale/lua-resty-url",
   license = "Apache License 2.0",
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["resty.url"] = "src/resty/url.lua"
   }
}
