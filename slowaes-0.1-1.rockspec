package = "slowAES"
version = "0.1-1"
source = {
   url = "git+https://github.com/viegg69/slowAES.git"
}
description = {
   detailed = "`slowAES` is an open-source library written in Lua that provides encryption and decryption capabilities based on the AES (Advanced Encryption Standard) algorithm.",
   homepage = "https://github.com/viegg69/slowAES",
   license = "CC"
}
dependencies = {
	"lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      aes = "aes.lua"
   }
}

