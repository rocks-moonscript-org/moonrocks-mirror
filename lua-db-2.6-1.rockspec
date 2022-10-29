package = "lua-db"
version = "2.6-1"
source = {
   url = "git://github.com/limao996/LuaDB.git",
   tag = "v2.6",
   branch = "main"
}
description = {
   summary = "本地kv数据库",
   homepage = "https://github.com/limao996/LuaDB.git",
   maintainer = "狸猫呐<762259384@qq.com>",
   license = "MIT"
}
dependencies = {
  "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
     ["db"] = "db.lua"
   }
}