package = "lua-monocypher"
version = "3.1.3-1"
source = {
  url = "http://luiz.sdf.org/lua-monocypher-3.1.3.zip",
  md5 = "97e9f410b29a31dddabe51d15bd5cc6d"
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
