package = "luaredis"
version = "2.0.5-1"

source = {
   url = "https://github.com/hnimminh/repository/raw/master/luaredis-2.0.5-1.zip",
   md5 = "1c2d2b8bea7e359f3f3b7871f75fe022"
}

description = {
   summary = "A Lua client library for the redis key value storage system.",
   detailed = [[
      A Lua client library for the redis key value storage system.
   ]],
   homepage = "https://github.com/hnimminh/luaredis",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1",
   "luasocket"
}

build = {
   type = "none",
   install = {
      lua = {
         redis = "src/redis.lua"
      }
   }
}
