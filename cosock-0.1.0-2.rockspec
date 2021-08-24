package = "cosock"
version = "0.1.0-2"
source = {
  url = "git://github.com/cosock/cosock.git",
  tag = "0.1.0"
}
description = {
  summary = "A coroutine executor with a bare luasocket like interface",
  detailed = [[
    cosock is a library that provides a coroutine executor for luasocket code.
    Unlike existing coroutine executors it aims to provide a socket facade API
    inside each coroutine that is as close to the native luasocket API as is
    possible.
  ]],
  homepage = "https://github.com/cosock/cosock",
  license = "Apache 2.0"
}
dependencies = {
  "lua >= 5.1",
  "luasocket >= 3.0rc1-2",
  "luasec >= 1",
}
build = {
  type = "builtin",
  modules = {
    cosock = "cosock.lua",
    ["cosock.channel"] = "cosock/channel.lua",
    ["cosock.socket"] = "cosock/socket.lua",
    ["cosock.socket.internals"] = "cosock/socket/internals.lua",
    ["cosock.socket.tcp"] = "cosock/socket/tcp.lua",
    ["cosock.socket.udp"] = "cosock/socket/udp.lua",
    ["cosock.ssl"] = "cosock/ssl.lua",
  }
}
