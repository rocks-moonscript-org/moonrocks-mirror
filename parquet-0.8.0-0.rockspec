package = "parquet"
version = "0.8.0-0"
source = {
  url = "https://github.com/BixData/lua-parquet/archive/0.8.0-0.tar.gz",
  dir = "lua-parquet-0.8.0-0"
}
description = {
  summary = "A pure Lua implementation of the Parquet file format",
  detailed = [[
    A synchronous pure Lua port of parquetjs, which is a
    fully asynchronous, pure node.js implementation of the
    Parquet file format.
  ]],
  homepage = "https://github.com/BixData/lua-parquet",
  maintainer = "David Rauschenbach",
  license = "MIT"
}
dependencies = {
  "bit32 <= 5.3.2-0",
  "lua >= 5.1, < 5.3",
  "middleclass <= 4.1-0",
  "thrift < 0.10.0-999",
  "vstruct <= 2.0.1-1"
}
build = {
  type = "builtin",
  modules = {
    ["parquet"] = "src/parquet.lua",
    ["parquet.codec.plain"] = "src/parquet/codec/plain.lua",
    ["parquet.schema"] = "src/parquet/schema.lua",
    ["parquet.shred"] = "src/parquet/shred.lua",
    ["parquet.types"] = "src/parquet/types.lua",
    ["parquet.util"] = "src/parquet/util.lua"
  }
}
