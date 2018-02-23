package = "wtf-fork-resty-mongol"
version = "0.1-2"
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
    ["wtf.fork.resty-mongol.init"]       = "src/init.lua",
    ["wtf.fork.resty-mongol.colmt"]      = "src/colmt.lua",
    ["wtf.fork.resty-mongol.cursor"]     = "src/cursor.lua",
    ["wtf.fork.resty-mongol.dbmt"]       = "src/dbmt.lua",
    ["wtf.fork.resty-mongol.get"]        = "src/get.lua",
    ["wtf.fork.resty-mongol.gridfs"]     = "src/gridfs.lua",
    ["wtf.fork.resty-mongol.gridfs_file"]= "src/gridfs_file.lua",
    ["wtf.fork.resty-mongol.ll"]         = "src/ll.lua",
    ["wtf.fork.resty-mongol.misc"]       = "src/misc.lua",
    ["wtf.fork.resty-mongol.object_id"]  = "src/object_id.lua",
    ["wtf.fork.resty-mongol.bson"]       = "src/bson.lua",
  }
}
