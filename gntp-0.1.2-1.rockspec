package = "gntp"
version = "0.1.2-1"

source = {
  url = "https://github.com/moteus/lua-gntp/archive/v0.1.2.zip",
  dir = "lua-gntp-0.1.2",
}

description = {
  summary    = "Implementation of Growl Notify Transport Protocol (GNTP) for Lua.",
  homepage   = "https://github.com/moteus/lua-gntp",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  -- "openssl",
  -- "luacrypto",
  -- "luasocket",
  -- "lluv",
}

build = {
  copy_directories = {'examples', 'test'},

  type = "builtin",

  modules = {
    [ "gntp"                     ] = "src/lua/gntp.lua",
    [ "gntp.utils"               ] = "src/lua/gntp/utils.lua",
    [ "gntp.crypto"              ] = "src/lua/gntp/crypto.lua",
    [ "gntp.connector.lluv"      ] = "src/lua/gntp/connector/lluv.lua",
    [ "gntp.connector.luasocket" ] = "src/lua/gntp/connector/luasocket.lua",
  }
}
