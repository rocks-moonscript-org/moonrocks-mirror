package = "lua-resty-balancer"
version = "0.02rc5-0"
source = {
   url = "git://github.com/openresty/lua-resty-balancer",
   tag = "v0.02rc5",
}

description = {
   summary = "A generic consistent hash implementation for OpenResty",
   homepage = "https://github.com/openresty/lua-resty-balancer",
   license = "Apache License 2.0",
   maintainer = "Yichun Zhang (agentzh) <agentzh@gmail.com>",
}

build = {
   type = "builtin",
   modules = {
      ["librestychash"] = {"chash.c"},

      ["resty.chash"] = "lib/resty/chash.lua",
      ["resty.roundrobin"] = "lib/resty/roundrobin.lua",
   }
}
