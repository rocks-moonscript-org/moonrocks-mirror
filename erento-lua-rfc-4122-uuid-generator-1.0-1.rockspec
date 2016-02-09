package = "erento-LUA-RFC-4122-UUID-Generator"
version = "1.0-1"
source = {
  url = "git://github.com/erento/LUA-RFC-4122-UUID-Generator.git"
}
description = {
  summary = "Pure Lua Implementation of RFC 4122-compliant v4 pseudorandom UUID generator.",
  detailed = "Pure Lua Implementation of RFC 4122-compliant v4 pseudorandom UUID generator. Also includes an RFC 4122-compliant v5 SHA1-based UUID generator (bring your own crypto library). Both modules use the same license as Lua (the MIT license).",
  homepage = "https://github.com/erento/LUA-RFC-4122-UUID-Generator.git",
  maintainer = "Erento <developers@erento.com>",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luacrypto >= 0.3.2-1"
}
build = {
  type = "builtin",
  modules = {
    uuid4 = "src/uuid4.lua",
    uuid5 = "src/uuid5.lua"
  }
}
