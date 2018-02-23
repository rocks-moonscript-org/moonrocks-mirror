package = "wtf-action-redirect"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-action-redirect",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-action-redirect",
   license = "MIT"
}
dependencies = {
   "wtf >= 0.2"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.actions.redirect"] = "wtf/actions/redirect.lua"
   }
}
