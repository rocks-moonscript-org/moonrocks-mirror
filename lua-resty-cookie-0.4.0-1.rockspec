package = "lua-resty-cookie"
version = "0.4.0-1"

source = {
  url = "git+https://github.com/utix/lua-resty-cookie",
  tag = "v0.4.0",
}

description = {
  summary = "Lua library for HTTP cookie manipulations for OpenResty/ngx_lua",
  homepage = "https://github.com/utix/lua-resty-cookie",
  license = "BSD",
}

dependencies = {
  "lua >= 5.1",  -- lua-nginx-module needed
}

build = {
    type = "builtin",
    modules = {
        ["resty.cookie"] = "lib/resty/cookie.lua"
    }
}
