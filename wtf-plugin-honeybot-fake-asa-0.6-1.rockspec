package = "wtf-plugin-honeybot-fake-asa"
version = "0.6-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-asa",
   tag = "0.6"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-asa",
   license = "MIT"
}
dependencies = {
   "wtf-plugin-honeybot-fake-asa-data >= 0.1",
   "resty-route >= 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.fake.asa.handler"] = "wtf/plugins/honeybot/fake/asa/handler.lua"
   }
}