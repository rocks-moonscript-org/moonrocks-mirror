package = "luaredis"
version = "2.0.5-0"

source = {
   url = "https://github.com/hnimminh/repository/raw/master/luaredis-2.0.5-0.zip",
   md5 = "ad6b9ac3be5623dbee6ee63ee886b17"
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
