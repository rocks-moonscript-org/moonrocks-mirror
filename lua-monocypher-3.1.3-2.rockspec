package = "lua-monocypher"
version = "3.1.3-2"
source = {
  url = "http://luiz.sdf.org/lua-monocypher-3.1.3.zip",
  md5 = "82ff393e9185d22eb5a113beaa40d8f7"
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
