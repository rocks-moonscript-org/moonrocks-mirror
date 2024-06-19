package = "botbye-openresty"
version = "0.0.9-0"

source = {
   url = "git://github.com/botbye/botbye-openresty-module.git",
   tag = "v0.0.9",
}

description = {
  summary = "OpenResty module for BotBye Bot Protection",
  homepage = "https://botbye.com/",
  license = "MIT"
}

dependencies = {
  "lua-resty-http == 0.17.1"
}

build = {
  type = "builtin",
  modules = {
    botbye = "src/botbye.lua",
  },
}