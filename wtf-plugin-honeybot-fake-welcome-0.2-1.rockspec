package = "wtf-plugin-honeybot-fake-welcome"
version = "0.2-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-welcome",
   tag = "0.2"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-welcome",
   license = "MIT"
}
dependencies = {
   "wtf-action-html_response >= 0.1",
   "wtf-plugin-honeybot-fake-welcome-data >= 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.fake.welcome"] = "wtf/plugins/honeybot/fake/welcome.lua"
   }
}
