package = "botbye-openresty"
version = "4.0.0-0"

source = {
   -- git+https, not git://: GitHub permanently disabled the unauthenticated git protocol in 2022, so a
   -- git:// URL makes `luarocks install botbye-openresty` unable to fetch the tag.
   url = "git+https://github.com/botbye/botbye-openresty-module.git",
   tag = "v4.0.0",
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