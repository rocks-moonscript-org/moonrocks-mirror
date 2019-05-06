local v = "0.1.0"

package = "bgcrypto-lmd5"
version = v .. "-1"

source = {
  url = "https://github.com/moteus/lua-bgcrypto-sha/archive/v" .. v .. ".zip",
  dir = "lua-bgcrypto-sha-" .. v,
}

description = {
  summary  = "Wraps digest implementation from `lmd5` library.",
  homepage = "https://github.com/moteus/bgcrypto-sha",
  detailed = [[Provide bgcrypto.digest interface and implement hmac/pbkdf2 functions.]];
  license = "BSD",
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "lmd5",
  "bgcrypto-hmac",
  "bgcrypto-pbkdf2",
}

build = {
  copy_directories = {},

  type = "builtin",

  modules = {
    ['bgcrypto.private.digest'] = 'src/lua/private/digest.lua',
    ['bgcrypto.md5']            = 'src/lua/md5.lua',
    ['bgcrypto.ripemd160']      = 'src/lua/ripemd160.lua',
  };
}

