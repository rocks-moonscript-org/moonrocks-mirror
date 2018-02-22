package = "wtf-action-store"
version = "0.2-1"
source = {
   url = "git+https://github.com/honeybot/wtf-action-store",
   tag = "0.2"
}
description = {
   homepage = "https://github.com/honeybot/wtf-action-store",
   license = "MIT"
}
dependencies = {
   "wtf >= 0.2",
   "lua-cjson >= 2.1"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.actions.store"] = "wtf/actions/store.lua"
   }
}
