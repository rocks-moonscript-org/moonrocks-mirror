package = "krpc"
version = "0.5.0-0"
source = {
  url = "https://s3.amazonaws.com/krpc/lua/krpc-0.5.0.zip"
}
description = {
  summary = "Lua client library for kRPC",
  homepage = "https://krpc.github.io/krpc",
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
