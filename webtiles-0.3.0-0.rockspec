package = "webtiles"
version = "0.3.0-0"
source = {
   url = "git+https://github.com/eak1mov/webtiles-lua.git",
   tag = "v0.3.0"
}
description = {
   summary = "WebTiles: Modern Tile Storage Format",
   homepage = "https://github.com/eak1mov/webtiles-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lua-flatbuffers"
}
build = {
   type = "builtin",
   modules = {
      ["webtiles"] = "webtiles.lua",

      ["webtiles.compat"] = "webtiles/compat.lua",
      ["webtiles.compat_5_1"] = "webtiles/compat_5_1.lua",
      ["webtiles.compat_5_3"] = "webtiles/compat_5_3.lua",
      ["webtiles.compat_luajit"] = "webtiles/compat_luajit.lua",

      ["webtiles.fbs.BlockType"] = "webtiles/fbs/BlockType.lua",
      ["webtiles.fbs.DenseLocations"] = "webtiles/fbs/DenseLocations.lua",
      ["webtiles.fbs.FileHeader"] = "webtiles/fbs/FileHeader.lua",
      ["webtiles.fbs.Header"] = "webtiles/fbs/Header.lua",
      ["webtiles.fbs.HeaderSignature"] = "webtiles/fbs/HeaderSignature.lua",
      ["webtiles.fbs.HeaderSize"] = "webtiles/fbs/HeaderSize.lua",
      ["webtiles.fbs.HeaderVersion"] = "webtiles/fbs/HeaderVersion.lua",
      ["webtiles.fbs.IndexFormat"] = "webtiles/fbs/IndexFormat.lua",
      ["webtiles.fbs.IndexHeader"] = "webtiles/fbs/IndexHeader.lua",
      ["webtiles.fbs.IndexMagic"] = "webtiles/fbs/IndexMagic.lua",
      ["webtiles.fbs.LinkItem"] = "webtiles/fbs/LinkItem.lua",
      ["webtiles.fbs.LocationItem"] = "webtiles/fbs/LocationItem.lua",
      ["webtiles.fbs.Location"] = "webtiles/fbs/Location.lua",
      ["webtiles.fbs.ResponseParams"] = "webtiles/fbs/ResponseParams.lua",
      ["webtiles.fbs.SparseBlock"] = "webtiles/fbs/SparseBlock.lua",
      ["webtiles.fbs.SparseLocations"] = "webtiles/fbs/SparseLocations.lua",
   }
}
