package = "lua-monocypher"
version = "3.1.3-6"
source = {
  url = "http://luiz.sdf.org/lua-monocypher-3.1.3.zip",
  md5 = "c6acddacda369a19c04ba0dd7be450da"
}
description = {
  homepage = "https://monocypher.org",
  license = "0BSD",
  summary = "Lua wrapper for the Monocypher crypto library.",
  maintainer = "luiz <luiz@sdf.org>",
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    monocypher = { "lua-monocypher.c", "monocypher.c", "monocypher-ed25519.c" },
  }
}
