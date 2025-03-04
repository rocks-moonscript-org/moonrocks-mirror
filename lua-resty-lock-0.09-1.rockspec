package = "lua-resty-lock"
version = "0.09-1"
source = {
  url = "git+https://github.com/openresty/lua-resty-lock",
  tag = "v0.09"
}
description = {
  summary = "Simple shm-based nonblocking lock API",
  detailed = [[
    This library implements a simple mutex lock in a similar way 
    to ngx_proxy module's proxy_cache_lock directive.
  ]],
  homepage = "https://github.com/openresty/lua-resty-lock",
  license = "BSD",
  maintainer = "Yichun Zhang <agentzh@gmail.com>"
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ["resty.lock"] = "lib/resty/lock.lua"
  }
}