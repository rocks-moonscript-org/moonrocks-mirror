package = "lua-resty-whitelist"
version = "0.1-1"

source = {
  url = "git+https://github.com/esidate/lua-resty-whitelist",
  tag = "v0.1-0",
}

description = {
  summary = "Dynamic whitelist in Lua based on ngx_lua for NGINX and OpenResty",
  detailed = "This module can be used to implement a dynamic whitelist in NGINX/OpenResty. This is especially useful to allow access only to some SaaS and Cloud services with dynamic IP addresses, such as Cloudflare, AWS, Azure, etc. For example, some of them may offer security features such as DDOS protection, WAF, etc. but can be bypassed if the origin IP is leaked and the server allows access from any IP address.",
  homepage = "https://github.com/esidate/lua-resty-whitelist",
  maintainer = "https://www.linkedin.com/in/el-mahdi-sidate/",
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
