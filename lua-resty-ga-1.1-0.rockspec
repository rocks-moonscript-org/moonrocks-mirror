package = "lua-resty-ga"
version = "1.1-0"
source = {
  url = "git://github.com/beanyoung/lua-resty-ga",
  tag = "v1.1"
}
description = {
  summary = "Send nginx/openresty access log to Google Analytics.",
  detailed = [[
    Collect all request log and send to Google Analytics in batches.
    Support multiple google analytics.
    Buildin custom dimensions and custom metrics like content type, content length, process time, status code and cache status.
  ]],
  homepage = "https://github.com/BeanYoung/lua-resty-ga",
  license = "Apache License 2.0",
  maintainer = "Bingyu Chen <beanyoungcn@gmail.com>"
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http >= 0.15.0"
}
build = {
  type = "builtin",
  modules = {
    ["resty.ga"] = "lib/resty/ga.lua"
  }
}
