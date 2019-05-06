local v = "0.1.0"

package = "bgcrypto-aes"
version = v .. "-1"

source = {
  url = "https://github.com/moteus/lua-bgcrypto-aes/archive/v" .. v .. ".zip",
  dir = "lua-bgcrypto-aes-" .. v,
}

description = {
  summary  = "AES encryption library",
  homepage = "https://github.com/moteus/bgcrypto-aes",
  detailed = [[Binding to Dr Brian Gladman's implementation of AES algorithm.]];
  license = "BSD",
}

dependencies = {
  "lua >= 5.1, < 5.4",
}

build = {
  copy_directories = {"test"},

  type = "builtin",

  modules = {
    ["bgcrypto.aes"] = {
      sources = {
        'src/aes/aes_modes.c', 'src/aes/aescrypt.c', 'src/aes/aeskey.c',
        'src/aes/aestab.c', 'src/aes/aes_ni.c', 'src/l52util.c', 'src/laes.c'
      },
      defines = {'RETURN_VALUES', 'VOID_RETURN=void', 'INT_RETURN=int'},
      incdirs = {'src/aes'},
    },
    ['bgcrypto.private.bit'] = 'src/lua/private/bit.lua',
    ["bgcrypto.cmac"] = 'src/lua/cmac.lua',
  },
}

