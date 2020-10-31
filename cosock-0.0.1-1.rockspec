package = "cosock"
version = "0.0.1-1"
source = {
  url = "git://github.com/cosock/cosock.git",
  tag = "0.0.1"
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
  "luasocket >= 3.0rc1-2"
}
build = {
  type = "builtin",
  modules = {
    cosock = "cosock.lua",
    ["cosock.channel"] = "cosock/channel.lua",
    ["cosock.cosocket"] = "cosock/cosocket.lua",
    ["cosock.cosocket.internals"] = "cosock/cosocket/internals.lua",
    ["cosock.cosocket.tcp"] = "cosock/cosocket/tcp.lua",
    ["cosock.cosocket.udp"] = "cosock/cosocket/udp.lua"
  }
}
