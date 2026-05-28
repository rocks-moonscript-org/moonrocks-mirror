package = "botbye-openresty"
version = "2.0.0-0"

source = {
   url = "git://github.com/botbye/botbye-openresty-module.git",
   tag = "v2.0.0",
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
    botbye_http = "src/botbye_http.lua",
    botbye_phishing = "src/botbye_phishing.lua",
  },
}