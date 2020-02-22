package = "wtf-plugin-honeybot-fake-sonicwall"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-sonicwall",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-sonicwall",
   license = "MIT"
}
dependencies = {
   "wtf-plugin-honeybot-fake-sonicwall-data >= 0.1",
   "resty-route >= 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.fake.sonicwall.handler"] = "wtf/plugins/honeybot/fake/sonicwall/handler.lua"
   }
}