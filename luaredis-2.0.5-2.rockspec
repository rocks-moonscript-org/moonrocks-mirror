package = "luaredis"
version = "2.0.5-2"

source = {
   url = "https://github.com/hnimminh/repository/raw/master/luaredis-2.0.5-2.zip",
   md5 = "db2920674158b9f01ce11eca779eaa72"
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
