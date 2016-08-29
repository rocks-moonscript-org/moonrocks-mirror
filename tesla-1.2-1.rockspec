package = "tesla"
version = "1.2-1"
source = {
  url = "http://gitlab.alibaba-inc.com/wujin.xwj/lua-tesla-client",
  tag = "v1.2"
}
description = {
  summary = "A lua module for tesla A/B Testing Platform",
  detailed = [[
    This is a module for tesla A/B Testing Platform
  ]],
  homepage = "http://gitlab.alibaba-inc.com/wujin.xwj/lua-tesla-client",
  license = "MIT"
}
dependencies = {
  "lua = 5.1",
  "stdlib ~> 41.2.0-1",
  "dkjson ~> 2.5-2",
  "luacrypto ~> 0.3.2-1",
  "luabitop ~> 1.0.2-3" 
}
build = {
  type = "builtin",
  modules = {
    Config = "Config.lua",
    Router = "Router.lua",
    Tesla = "Tesla.lua"
  }
}
