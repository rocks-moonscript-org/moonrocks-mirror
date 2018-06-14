package = "libsodium"
version = "0.1.0-1"
source = {
   url = "https://download.libsodium.org/libsodium/releases/libsodium-1.0.16.tar.gz",
   md5 = "37b18839e57e7a62834231395c8e962b"
}
description = {
   summary = "LuaRocks rock for the Sodium Crypto Library (libsodium)",
   detailed = [[
A convenient way to install the Sodium Crypto Library (libsodium) via LuaRocks.
Please note this is not a libsodium to Lua binding! It just installs libsodium.
]],
   homepage = "https://github.com/peter-evans/libsodium-rockspec",
   license = "MIT"
}
supported_platforms = { 
   "linux", 
}
build = {
   type = "command",
   build_command = [[
./configure && make && make check
]],
   install_command = "sudo make install"
}
