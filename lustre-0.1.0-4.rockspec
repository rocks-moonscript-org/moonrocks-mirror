package = "lustre"
version = "0.1.0-4"
source = {
   url = "git://github.com/cosock/lustre",
   tag = "v0.1.0-4"
}
description = {
   homepage = "https://github.com/cosock/lustre",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3",
   "sha1 >= 0.6.0",
   "base64 >= 1.5",
   "luncheon >= 0.0.0",
   "cosock >= 0.2",
   "luasocket == 3.0rc1-2",
   "logface >= 0.0.2"
}
build = {
   type = "builtin",
   modules = {
      lustre = "lustre/init.lua",
      ["lustre.config"] = "lustre/config.lua",
      ["lustre.frame"] = "lustre/frame/init.lua",
      ["lustre.frame.close"] = "lustre/frame/close.lua",
      ["lustre.frame.frame_header"] = "lustre/frame/frame_header.lua",
      ["lustre.frame.opcode"] = "lustre/frame/opcode.lua",
      ["lustre.handshake"] = "lustre/handshake/init.lua",
      ["lustre.handshake.key"] = "lustre/handshake/key.lua",
      ["lustre.message"] = "lustre/message.lua",
      ["lustre.utils"] = "lustre/utils.lua",
      ["lustre.ws"] = "lustre/ws.lua"
   }
}
