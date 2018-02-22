package = "wtf-plugin-honeybot-fake-drupal"
version = "0.4-1"
source = {
   url = "git+https://github.com/honeybot/wtf-plugin-honeybot-fake-drupal",
   tag = "0.4"
}
description = {
   homepage = "https://github.com/honeybot/wtf-plugin-honeybot-fake-drupal",
   license = "MIT"
}
dependencies = {
   "wtf-plugin-honeybot-fake-drupal-data >= 0.1",
   "lua-cjson >= 2.1",
}
build = {
   type = "builtin",
   modules = {
      ["wtf.plugins.honeybot.fake.drupal"] = "wtf/plugins/honeybot/fake/drupal/handler.lua"
   }
}
