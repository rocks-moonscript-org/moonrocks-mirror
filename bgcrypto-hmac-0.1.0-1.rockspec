local v = "0.1.0"

package = "bgcrypto-hmac"
version = v .. "-1"

source = {
  url = "https://github.com/moteus/lua-bgcrypto-sha/archive/v" .. v .. ".zip",
  dir = "lua-bgcrypto-sha-" .. v,
}

description = {
  summary  = "Keyed-Hashing for Message Authentication",
  homepage = "https://github.com/moteus/bgcrypto-sha",
  detailed = [[Work with SHA1/SHA2/MD5/RIPEMD160/etc. hash algorithms.]];
  license = "BSD",
}

dependencies = {
  "lua >= 5.1, < 5.4",
  -- "bit32",
}

build = {
  copy_directories = {},

  type = "builtin",

  modules = {
    ['bgcrypto.private.bit'] = 'src/lua/private/bit.lua',
    ['bgcrypto.hmac']        = 'src/lua/hmac.lua'
  }
}

