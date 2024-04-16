package = "pixcrypt"
version = "1.2-2"
source = {
   url = "git+https://github.com/ttwizz/pixcrypt.git"
}
description = {
   summary = "Key-based Encryption & Decryption Library",
   detailed = "This module allows you to encrypt and decrypt the necessary data using a key.",
   homepage = "https://github.com/ttwizz/pixcrypt",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      pixcrypt = "src/pixcrypt.lua"
   }
}
