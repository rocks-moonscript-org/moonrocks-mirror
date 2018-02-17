package = "wtf-plugin-honeybot-fake-welcome"
version = "0.1-2"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-welcome",
   tag = "0.1"
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
      ["wtf.plugins.honeybot.fake.welcome.module"] = "wtf/plugins/honeybot/fake/welcome/module.lua"
   }
}
