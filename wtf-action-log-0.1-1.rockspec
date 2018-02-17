package = "wtf-action-log"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-action-log",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-action-log",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["wtf.actions.log"] = "wtf/actions/log.lua"
   }
}
