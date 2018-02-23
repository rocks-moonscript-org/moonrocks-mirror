package = "wtf-storage-mongodb"
version = "0.1-1"
source = {
   url = "git+https://github.com/honeybot/wtf-storage-mongodb",
   tag = "0.1"
}
description = {
   homepage = "https://github.com/honeybot/wtf-storage-mongodb",
   license = "MIT"
}
dependencies = {
   "wtf >= 0.2",
   "wtf-fork-resty-mongol >= 0.1"
}
build = {
   type = "builtin",
   modules = {
      ["wtf.storages.mongodb"] = "wtf/storages/mongodb.lua"
   }
}
