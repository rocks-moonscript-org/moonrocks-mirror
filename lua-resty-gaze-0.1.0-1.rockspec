package = "lua-resty-gaze"
version = "0.1.0-1"
source = {
  tag = "master",
  url = "git://github.com/reTsubasa/lua-resty-gaze",
}
description = {
  summary  = "A request counter",
  detailed = [[
    A request counter
  ]],
  homepage = "https://github.com/reTsubasa/lua-resty-uh",
  license  = "MIT"
}
dependencies = {
  "penlight",
  "lua-resty-http",
  "lua-resty-redis",
}
build = {
  type    = "builtin",
  modules = {
    ["gaze"] = "src/agent/gaze.lua",
    ["gaze_server"] = "src/server/gaze_backend.lua",
  },
}