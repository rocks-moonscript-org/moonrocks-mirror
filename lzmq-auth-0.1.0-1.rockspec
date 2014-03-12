package = "lzmq-auth"
version = "0.1.0-1"

source = {
  url = "https://github.com/moteus/lzmq-auth/archive/v0.1.0.zip",
  dir = "lzmq-auth-0.1.0",
}

description = {
  summary = "Module for ZMQ security authentication",
  homepage = "https://github.com/moteus/lzmq-auth",
  license = "MIT/X11",
}

dependencies = {
  "lua >= 5.1, < 5.3",
  -- "path", -- for test and for load all certs from dir
  -- "lzmq > 3.1" or "lzmq-ffi > 3.1",
}

build = {
  copy_directories = {"test"},

  type = "builtin",

  modules = {
    ["lzmq.auth"           ] = "src/lua/auth.lua";
    ["lzmq.cert"           ] = "src/lua/cert.lua";
    ["lzmq.impl.auth_zap"  ] = "src/lua/impl/auth_zap.lua";
  },
}
