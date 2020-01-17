package = "solr"
version = "0.2.1-0"
source = {
   url = "git+https://github.com/alekmarinov/luasolr.git",
   tag = "0.2.1"
}
description = {
   summary = "Lua to Apache Solr connection module",
   detailed = [[
Provides minimalistic interface to solr enabling posting and quering data records 
]],
   homepage = "https://github.com/alekmarinov/luasolr",
   license = "MIT/X11"
}
dependencies = {
   "luajson",
   "luasocket"
}
build = {
   type = "builtin",
   modules = {
      solr = "solr.lua"
   }
}
