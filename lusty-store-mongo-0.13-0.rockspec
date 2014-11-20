package = "lusty-store-mongo"
version = "0.13-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-store-mongo/archive/v0.13.tar.gz",
  dir = "lusty-store-mongo-0.13"
}
description = {
  summary = "Mongo plugin for lusty persistence interface.",
  detailed = [[
    Mongo plugin for lusty persistence interface.
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty-log >= 0.2-0",
  "lusty-store >= 0.6-0",
  "resty-mongol >= 0.7-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-store-mongo.store.mongo.connection"] = "lusty-store-mongo/store/mongo/connection.lua",
    ["lusty-store-mongo.store.mongo.delete"] = "lusty-store-mongo/store/mongo/delete.lua",
    ["lusty-store-mongo.store.mongo.patch"] = "lusty-store-mongo/store/mongo/patch.lua",
    ["lusty-store-mongo.store.mongo.post"] = "lusty-store-mongo/store/mongo/post.lua",
    ["lusty-store-mongo.store.mongo.put"] = "lusty-store-mongo/store/mongo/put.lua",
    ["lusty-store-mongo.store.mongo.get"] = "lusty-store-mongo/store/mongo/get.lua",
    ["lusty-store-mongo.store.mongo.options"] = "lusty-store-mongo/store/mongo/options.lua",
    ["lusty-store-mongo.store.mongo"] = "lusty-store-mongo/store/mongo.lua",
    ["lusty-store-mongo.query"] = "lusty-store-mongo/query.lua"
  }
}
