package = "oscpack"
version = "1.0.0-1"
source = {
  url = 'git://github.com/s-ol/lua-oscpack',
  tag = 'v1.0.0',
}
description = {
  summary = "OpenSoundControl for Lua.",
  detailed = [[
Simply packs/unpacks between Lua values and binary strings ready to be sent
on the network or other transports.

The library returns a table with two functions: pack and unpack.

Uses Ross Bencina oscpack library.
Fork of http://doc.lubyk.org/osc.html with external dependencies removed.
  ]],
  homepage = "http://doc.lubyk.org/osc.html",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}
build = {
  type = 'builtin',
  modules = {
    -- C module
    oscpack = {
      sources = {
        'src/bind/dub/dub.cpp',
        'src/bind/osc_core.cpp',
        'src/osc.cpp',
        'src/vendor/osc/OscOutboundPacketStream.cpp',
        'src/vendor/osc/OscPrintReceivedElements.cpp',
        'src/vendor/osc/OscReceivedElements.cpp',
        'src/vendor/osc/OscTypes.cpp',
      },
      incdirs   = {'include', 'src/bind', 'src/vendor'},
      libraries = {'stdc++'},
    },
  },
  platforms = {
    windows = {
      modules = {
        oscpack = {
          defines = {'OSC_HOST_LITTLE_ENDIAN'},
        },
      },
    },
  },
}
