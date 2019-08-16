package = "ncache"
version = "0.1.0-1"
source = {
  url = "https://github.com/Tieske/ncache.lua/archive/0.1.0.tar.gz",
  dir = "ncache.lua-0.1.0"
}
description = {
  summary = "Cache with key normalization (many-to-1 cache)",
  detailed = [[
    Cache that does key normalization and also caches the normalized keys.
    Especially useful when normalization of the key is an expensive operation.
  ]],
  homepage = "https://github.com/Tieske/ncache.lua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.4",
}
build = {
  type = "builtin",
  modules = {
    ["ncache.init"] = "src/ncache.lua",
  },
}
