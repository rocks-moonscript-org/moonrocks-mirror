package = "tdigest"
version = "1.0-1"
source = {
   url = "git+https://github.com/guicaulada/lua-tdigest.git"
}
description = {
   summary = "Lua implementation of Dunning's T-Digest for streaming quantile approximation.",
   detailed = "Lua implementation of Dunning's T-Digest for streaming quantile approximation.",
   homepage = "https://github.com/guicaulada/lua-tdigest",
   license = "MIT/X11"
}
dependencies = {
   "bintrees >= 1.3"
}
build = {
   type = "builtin",
   modules = {
      ["tdigest.digest"] = "tdigest/digest.lua",
      ["tdigest.tdigest"] = "tdigest/tdigest.lua"
   }
}
