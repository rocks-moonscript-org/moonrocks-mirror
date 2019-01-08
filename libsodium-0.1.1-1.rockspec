package = "libsodium"
version = "0.1.1-1"
source = {
   url = "https://download.libsodium.org/libsodium/releases/libsodium-1.0.17.tar.gz",
   md5 = "0f71e2680187a1558b5461e6879342c5"
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
