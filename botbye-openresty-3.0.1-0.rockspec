package = "botbye-openresty"
version = "3.0.1-0"

source = {
   url = "git://github.com/botbye/botbye-openresty-module.git",
   tag = "v3.0.1",
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
    botbye_module_info = "src/botbye_module_info.lua",
    botbye_phishing = "src/botbye_phishing.lua",
  },
}