package = "wtf-plugin-honeybot-fake-owa"
version = "0.2-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-owa",
   tag = "0.2"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-owa",
   license = "MIT"
}
dependencies = {
   "wtf-plugin-honeybot-fake-owa-data >= 0.1",
   "resty-route >= 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.fake.owa.handler"] = "wtf/plugins/honeybot/fake/owa/handler.lua"
   }
}