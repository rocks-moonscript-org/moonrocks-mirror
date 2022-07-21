package = "auproc"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-auproc/archive/v"..versionNumber..".zip",
  dir = "lua-auproc-"..versionNumber,
}
description = {
  summary = "Simple audio processor objects",
  homepage = "https://github.com/osch/lua-auproc",
  license = "MIT",
  detailed = [[
  	Simple audio processor objects that can be used 
  	with ljack ( https://luarocks.org/modules/osch/ljack )
  	or lrtaudio  ( https://luarocks.org/modules/osch/lrtaudio )
  ]],
}
dependencies = {
  "lua >= 5.1, <= 5.4",
}
build = {
  type = "builtin",
  modules = {
    auproc = {
      sources = {
          "src/main.c",
          "src/auproc_compat.c",

          "src/midi_sender.c",
          "src/midi_receiver.c",
          "src/midi_mixer.c",

          "src/audio_sender.c",
          "src/audio_receiver.c",
          "src/audio_mixer.c"
      },
      defines = { "AUPROC_VERSION="..versionNumber },
    },
  }
}
