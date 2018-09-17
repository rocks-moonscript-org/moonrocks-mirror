package = "wtf-plugin-honeybot-troll_die"
version = "0.2-2"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-troll_die",
   tag = "0.2"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-troll_die",
   license = "MIT"
}
dependencies = {
   "wtf-action-simple_response >= 0.1",
   "wtf-honeybot-core >= 0.1",
   "lua-resty-nettle >= 0.105"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.troll_die.handler"] = "wtf/plugins/honeybot/troll_die/handler.lua"
   }
}
