package = "lua-resty-whitelist"
version = "0.1-0"

source = {
  url = "git+https://github.com/esidate/lua-resty-whitelist",
  tag = "v0.1-0",
}

description = {
  summary = "Dynamic whitelist in Lua based on ngx_lua for NGINX and OpenResty",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "resty.iputils >= 0.3",
  "resty.http >= 0.15",
}

build = {
  type = "builtin",
  modules = {
    ["resty.whitelist"] = "lib/resty/whitelist.lua",
  },
}
