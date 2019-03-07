package = "wtf-plugin-honeybot-cve_2019_6340"
version = "0.2-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-cve_2019_6340",
   tag = "0.2"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-cve_2019_6340",
   license = "MIT"
}
dependencies = {
   "wtf-action-json_response >= 0.1",
   "wtf-honeybot-core >= 0.1",
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.cve_2019_6340.handler"] = "wtf/plugins/honeybot/cve_2019_6340/handler.lua"
   }
}
