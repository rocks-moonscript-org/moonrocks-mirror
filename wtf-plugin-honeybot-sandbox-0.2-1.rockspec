package = "wtf-plugin-honeybot-sandbox"
version = "0.2-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-sandbox",
   tag = "0.2"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-sandbox",
   license = "MIT"
}
dependencies = {
   "wtf-honeybot-core >= 0.1",
   "wtf-storage-redis >= 0.1",
   "lua-resty-reqargs >= 1.4",
   "lua-resty-http >= 0.12",
   "lua-cjson >= 2.1.0.6"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.sandbox.handler"] = "wtf/plugins/honeybot/sandbox/handler.lua"
   }
}
