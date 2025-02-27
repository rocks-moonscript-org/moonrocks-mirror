package = "lua-resty-oss"
version = "0.01-0"
source = {
   url = "git+ssh://git@github.com/OnlyPiglet/lua-resty-oss.git"
}
description = {
   summary = "Lua Oss driver for OpenResty / ngx_lua.",
   homepage = "https://github.com/OnlyPiglet/lua-resty-oss",
   license = "Apache License",
   maintainer = "onlypiglet <jackwuchenghao4@gmail.com>",
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.12-0" 
}

build = {
   type = "builtin",
   modules = {
  }
}
