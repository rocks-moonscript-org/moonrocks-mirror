package = "lua-resty-mongol3"
version = "0.1-1"
source = {
  url = "git://github.com/sunao-uehara/lua-resty-mongol",
  tag = "v0.1",
}
description = {
  summary = "Mongo driver for openresty.",
  detailed = [[
  ]],
  homepage = "",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "luacrypto >= 0.3.2"
}
build = {
  type = "builtin",
  modules = {
    ["lua-resty-mongol3.init"]       = "lib/resty/mongol/init.lua",
    ["lua-resty-mongol3.colmt"]      = "lib/resty/mongol/colmt.lua",
    ["lua-resty-mongol3.cursor"]     = "lib/resty/mongol/cursor.lua",
    ["lua-resty-mongol3.dbmt"]       = "lib/resty/mongol/dbmt.lua",
    ["lua-resty-mongol3.get"]        = "lib/resty/mongol/get.lua",
    ["lua-resty-mongol3.globalplus"] = "lib/resty/mongol/globalplus.lua",
    ["lua-resty-mongol3.gridfs"]     = "lib/resty/mongol/gridfs.lua",
    ["lua-resty-mongol3.gridfs_file"]= "lib/resty/mongol/gridfs_file.lua",
    ["lua-resty-mongol3.ll"]         = "lib/resty/mongol/ll.lua",
    ["lua-resty-mongol3.misc"]       = "lib/resty/mongol/misc.lua",
    ["lua-resty-mongol3.object_id"]  = "lib/resty/mongol/object_id.lua",
    ["lua-resty-mongol3.bson"]       = "lib/resty/mongol/bson.lua",
  }
}
