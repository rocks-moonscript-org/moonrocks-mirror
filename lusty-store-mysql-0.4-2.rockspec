package = "lusty-store-mysql"
version = "0.4-2"
source = {
  url = "https://github.com/Olivine-Labs/lusty-store-mysql/archive/v0.4.tar.gz",
  dir = "lusty-store-mysql-0.4"
}
description = {
  summary = "MySQL plugin for lusty persistence interface.",
  detailed = [[
    MySQL plugin for lusty persistence interface.
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty-log >= 0.2-0",
  "lusty-store >= 0.1-0",
  "busted >= 1.10-0"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-store-mysql.store.mysql.get"]       = "lusty-store-mysql/store/mysql/get.lua",
    ["lusty-store-mysql.store.mysql.post"]      = "lusty-store-mysql/store/mysql/post.lua",
    ["lusty-store-mysql.store.mysql.patch"]     = "lusty-store-mysql/store/mysql/patch.lua",
    ["lusty-store-mysql.store.mysql.delete"]    = "lusty-store-mysql/store/mysql/delete.lua",
    ["lusty-store-mysql.store.mysql.connection"]= "lusty-store-mysql/store/mysql/connection.lua",
    ["lusty-store-mysql.store.mysql"]           = "lusty-store-mysql/store/mysql.lua",
    ["lusty-store-mysql.query"]                 = "lusty-store-mysql/query.lua"
  }
}
