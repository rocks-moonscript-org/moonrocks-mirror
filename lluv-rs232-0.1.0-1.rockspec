package = "lluv-rs232"
version = "0.1.0-1"

source = {
  url = "https://github.com/moteus/lua-lluv-rs232/archive/v0.1.0.zip",
  dir = "lua-lluv-rs232-0.1.0",
}

description = {
  summary    = "Serial port communication library for lluv library",
  homepage   = "https://github.com/moteus/lua-lluv-rs232",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  'lua >= 5.1, < 5.4',
  'lluv >= 0.1.1',
  'rs232',
  'lluv-poll-zmq',
  'lzmq >= 0.4.1',
  'lua-llthreads2',
  'lua-log',
}

external_dependencies = {
}

build = {
  copy_directories = {'examples'},

  type = "builtin",

  modules = {
    ['lluv.rs232'   ] = 'src/lua/lluv/rs232.lua',
    ['lluv.rs232.co'] = 'src/lua/lluv/rs232/co.lua',
  }
}
