package = "lua-resty-url"
version = "0.2.0-1"
source = {
   url = "https://github.com/3scale/lua-resty-url/archive/v" .. version .. ".tar.gz",
   md5 = "c4fb36a117d11975cda363a226bae73f",
   dir = "lua-resty-url-" .. version,
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
