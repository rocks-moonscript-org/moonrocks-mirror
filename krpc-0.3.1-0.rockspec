package = "kRPC"
version = "0.3.1-0"
source = {
  url = "http://luarocks.org/manifests/krpc/krpc-0.3.1-0.src.rock"
}
description = {
  summary = "Lua client library for kRPC",
  homepage = "https://github.com/krpc/krpc/wiki",
  license = "GNU LGPL v3"
}
dependencies = {
  "lua >= 5.1, < 5.3",
  "luasocket",
  "protobuf",
  "penlight"
}
build = {
  type = "builtin",
  modules = {
  }
}
