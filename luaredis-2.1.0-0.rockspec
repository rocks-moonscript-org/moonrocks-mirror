package = "luaredis"
version = "2.1.0-0"

source = {
   url = "https://github.com/hnimminh/repository/raw/master/luaredis-2.1.0-0.zip",
   md5 = "6512977b3fc7fb4228ec3ef585648ff7"
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
