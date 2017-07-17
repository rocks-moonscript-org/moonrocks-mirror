package = "lzmq-zmq"
version = "0.1.0-1"
source = {
  url = "https://github.com/moteus/lua-lzmq-zmq/archive/v0.1.0.zip",
  dir = "lua-lzmq-zmq-0.1.0",
}

description = {
  summary = "Wrapper around lzmq library to be compatiable with lua-zmq library",
  homepage = "lua-lzmq-zmq",
  detailed = [[]],
  license  = "MIT/X11",
}

dependencies = {
  "lua >= 5.1, < 5.4",
  -- "lzmq" or "lzmq-ffi",
}

build = {
  type = "builtin",
  copy_directories = {"test"},

  modules = {
    ["zmq" ]        = "src/zmq.lua",
    ["zmq.poller" ] = "src/zmq/poller.lua",
  }
}
