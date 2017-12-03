package = "parquet"
version = "0.8.0-1"
source = {
  url = "https://github.com/BixData/lua-parquet/archive/0.8.0-1.tar.gz",
  dir = "lua-parquet-0.8.0-1"
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
  "thrift >= 0.10.0-3, < 0.10.0-999",
  "vstruct <= 2.0.1-1"
}
build = {
  type = "builtin",
  modules = {
    ["parquet"] = "src/parquet.lua",
    ["parquet.codec.plain"] = "src/parquet/codec/plain.lua",
    ["parquet.parquet_ttypes"] = "src/parquet/parquet_ttypes.lua",
    ["parquet.ParquetCursor"] = "src/parquet/ParquetCursor.lua",
    ["parquet.ParquetEnvelopeReader"] = "src/parquet/ParquetEnvelopeReader.lua",
    ["parquet.ParquetReader"] = "src/parquet/ParquetReader.lua",
    ["parquet.reader"] = "src/parquet/reader.lua",
    ["parquet.schema"] = "src/parquet/schema.lua",
    ["parquet.shred"] = "src/parquet/shred.lua",
    ["parquet.types"] = "src/parquet/types.lua",
    ["parquet.util"] = "src/parquet/util.lua"
  }
}
