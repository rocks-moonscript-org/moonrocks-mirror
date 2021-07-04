package = "base58"
version = "1.1.0-1"

source = {
  url = "git://github.com/leafo/lua-base58.git",
  branch = "v1.1.0",
}

description = {
  summary = "Base58 encoding and decoding for Lua",
  license = "MIT",
  maintainer = "Leaf Corcoran <leafot@gmail.com>",
}

dependencies = {
  "lua >= 5.1, <= 5.4"
}

build = {
  type = "builtin",
  modules = {
    ["base58"] = "base58/init.lua",
  }
}
