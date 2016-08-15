package = "lua-resty-couchdb"
version = "0.01-1"
source = {
   url = "git://github.com/paragasu/lua-resty-couchdb",
   tag = "v0.01-1"
}
description = {
   summary  = "Minimalist couchdb client for lua resty",
   homepage = "https://github.com/paragasu/lua-resty-couchdb",
   license  = "MIT",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1",
   "lua-requests"
}
build = {
   type = "builtin",
   modules = {
      ["couchdb"] = "couchdb.lua",
   }
}
