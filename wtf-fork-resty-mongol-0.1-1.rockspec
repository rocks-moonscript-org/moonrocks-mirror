package = "wtf-fork-resty-mongol"
version = "0.1-1"
source = {
  url = "git+https://github.com/honeybot/wtf-fork-resty-mongol",
  tag = "0.1"
}
description = {
  homepage = "https://github.com/honeybot/wtf-fork-resty-mongol",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luacrypto >= 0.3.2"
}
build = {
  type = "builtin",
  modules = {
    ["resty-mongol.init"]       = "src/init.lua",
    ["resty-mongol.colmt"]      = "src/colmt.lua",
    ["resty-mongol.cursor"]     = "src/cursor.lua",
    ["resty-mongol.dbmt"]       = "src/dbmt.lua",
    ["resty-mongol.get"]        = "src/get.lua",
    ["resty-mongol.gridfs"]     = "src/gridfs.lua",
    ["resty-mongol.gridfs_file"]= "src/gridfs_file.lua",
    ["resty-mongol.ll"]         = "src/ll.lua",
    ["resty-mongol.misc"]       = "src/misc.lua",
    ["resty-mongol.object_id"]  = "src/object_id.lua",
    ["resty-mongol.bson"]       = "src/bson.lua",
  }
}
