package = "lluv-ftp"
version = "0.1.0-1"

source = {
  url = "https://github.com/moteus/lua-lluv-ftp/archive/v0.1.0.zip",
  dir = "lua-lluv-ftp-0.1.0",
}

description = {
  summary    = "Memcached client for lua-lluv library",
  homepage   = "https://github.com/moteus/lua-lluv-ftp",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "lluv > 0.1.1",
  -- "vararg"
}

build = {
  copy_directories = {'test'},

  type = "builtin",

  modules = {
    ["lluv.ftp"] = "src/lua/lluv/ftp.lua",
  }
}
