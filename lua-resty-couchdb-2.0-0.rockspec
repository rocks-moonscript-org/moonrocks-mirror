package = "lua-resty-couchdb"
version = "2.0-0"
source = {
   url = "git://github.com/paragasu/lua-resty-couchdb",
   tag = "v2.0-0"
}
description = {
   summary  = "Minimalist couchdb client for lua resty",
   homepage = "https://github.com/paragasu/lua-resty-couchdb",
   license  = "MIT",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.couchdb"] = "couchdb.lua",
   }
}
