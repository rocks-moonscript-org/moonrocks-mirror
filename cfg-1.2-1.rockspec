package = "cfg"
version = "1.2-1"
source = {
   url = "git://github.com/mistrza/lua-cfg",
   tag = "v1.2",
}
description = {
   summary = "Context free grammar expander",
   homepage = "http://github.com/mistrza/lua-cfg",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "split >= 3.2",
   "log >= 1.0"
}
build = {
   type = "builtin",
   modules = {
      cfg = "cfg.lua",
   }
}