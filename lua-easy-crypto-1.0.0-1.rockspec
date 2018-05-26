package = "lua-easy-crypto"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/szeist/lua-easy-crypto.git",
   tag = "v1.0.0",
}
description = {
   summary = "Simple interface for password based AES-256 encryption and decryption.",
   homepage = "https://github.com/szeist/lua-easy-crypto",
   license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luaossl == 20171028-0",
  "fly-bgcrypto-pbkdf2 == 0.0.1-1",
  "fly-bgcrypto-sha == 0.0.1-1",
  "lbase64 == 20120820-1"
}
build = {
   type = "builtin",
   modules = {
     ["resty.easy-crypto"] = "src/easy-crypto.lua"
   }
}
