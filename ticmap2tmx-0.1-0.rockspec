package = "ticmap2tmx"
version = "0.1-0"
rockspec_format = "3.0"
source = {
   url = "git://github.com/nathanjent/ticmap2tmx",
   tag = "v0.1"
}
description = {
   summary = "A tool to convert between the TIC-80 map export data and the Tiled TMX format.",
   homepage = "https://github.com/nathanjent/ticmap2tmx",
   issues_url = "https://github.com/nathanjent/ticmap2tmx/issues",
   maintainer = "Nathan Jent <nathanjent@gmail.com>",
   license = "MIT",
   labels = {
      "tmx",
      "tiled",
      "tic80",
      "tic-80",
      "gamedev",
      "tilemap"
   }
}
dependencies = {
   "lua >= 5.1",
   "xml2lua ~> 1.5",
   "lua-zlib ~> 1.2",
   -- zstd OS support is currently limited
   -- "lua-zstd ~> 0.2",
   "base64 ~> 1.5"
}
build = {
   type = "builtin",
   install = {
      bin = { "bin/ticmap2tmx" }
   },
   modules = {
      ['ticmap2tmx'] = "ticmap2tmx/init.lua",
      ['ticmap2tmx.tmx2map'] = "ticmap2tmx/tmx2map.lua",
      ['ticmap2tmx.map2tmx'] = "ticmap2tmx/map2tmx.lua"
   }
}
