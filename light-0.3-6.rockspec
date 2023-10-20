package = "Light"
version = "0.3-6"

source = {
  url = "git://github.com/jakitliang/Light.git",
}

description = {
  summary = "If I were the other shore, bright & magnanimous.",
  homepage = "https://github.com/jakitliang/Light",
  license = "BSD 2-Clause License",
  detailed = "Framework of everything"
}

dependencies = {
  "lua >= 5.1"
}

local function MakeModule(platform)
  local modules = {
    ['light.Object'] = 'light/Object.lua',
    ['light.Log'] = 'light/Log.lua',
    ['light.Worker'] = 'light/Worker.lua',
    ['light.worker.EventWorker'] = 'light/worker/EventWorker.lua',
    ['light.network.Channel'] = 'light/network/Channel.lua',
    ['light.network.Protocol'] = 'light/network/Protocol.lua',
    ['light.network.Session'] = 'light/network/Session.lua',
    ['light.network.channel.TCPChannel'] = 'light/network/channel/TCPChannel.lua',
    ['light.network.channel.TCPServerChannel'] = 'light/network/channel/TCPServerChannel.lua',
    ['light.network.protocol.HttpProtocol'] = 'light/network/protocol/HttpProtocol.lua',
    ['light.network.protocol.WebSocketProtocol'] = 'light/network/protocol/WebSocketProtocol.lua',
    ['light.network.session.HttpServerSession'] = 'light/network/session/HttpServerSession.lua',
    ['light.network.session.HttpSession'] = 'light/network/session/HttpSession.lua',
    ['light.network.session.TCPServerSession'] = 'light/network/session/TCPServerSession.lua',
    ['light.network.session.TCPSession'] = 'light/network/session/TCPSession.lua',
    ['light.network.socket'] = {
      defines = {},
      sources = {
        "light/network/socket/src/base64.c",
        "light/network/socket/src/error_number.cpp",
        "light/network/socket/src/sha1.c",
        "light/network/socket/src/socket.cpp",
        "light/network/socket/src/socket_posix.cpp"
      },
      incdirs = {"light/network/socket/include", "light/network/socket/src"},
      libraries = {},
    },
    ['light.Record'] = 'light/Record.lua',
    ['light.record.Device'] = 'light/record/Device.lua',
    ['light.record.device.SQLiteDevice'] = 'light/record/device/SQLiteDevice.lua',
    ['light.record.Field'] = 'light/record/Field.lua',
    ['light.record.Query'] = 'light/record/Query.lua',
    ['light.record.Schema'] = 'light/record/Schema.lua'
  }

  return {modules = modules}
end

local platforms = {
  unix = MakeModule('unix'),
  macosx = MakeModule('macosx'),
  windows = {
    type = "make",
    build_variables = {
      -- LIB_OPTION = "$(LUA_LIBDIR)\\lua51.lib $(FFI_LIBDIR)\\ffi.lib",
      CFLAGS = "$(CFLAGS) /DWIN32 -Dsocket_EXPORTS /D_WINDOWS /EHsc /Ob2 /DNDEBUG -I$(LUA_INCDIR) -Ilight/socket/include -Ilight/socket/src",
      CPPFLAGS = "$(CFLAGS) /nologo /TP -Dsocket_EXPORTS /DWIN32 /D_WINDOWS /EHsc /Ob2 /DNDEBUG /D_CRT_SECURE_NO_WARNINGS -I$(LUA_INCDIR) -Ilight/socket/include -Ilight/socket/src",
      LIBFLAG = "$(LIBFLAG)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)",
      LUALIB = "$(LUALIB)"
    },
    install_variables = {
      LUA_LIBDIR = "$(LIBDIR)",
      LUA_DIR = "$(LUADIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LIBDIR = "$(LIBDIR)",
      BIN_DIR = "$(BINDIR)",
      PREFIX = "$(PREFIX)"
    },
    install = {
      lib = {
        ['light.socket'] = "socket.dll"
      },
      lua = {
        ['light.Object'] = 'light/Object.lua',
        ['light.Log'] = 'light/Log.lua',
        ['light.Worker'] = 'light/Worker.lua',
        ['light.worker.EventWorker'] = 'light/worker/EventWorker.lua',
        ['light.network.Channel'] = 'light/network/Channel.lua',
        ['light.network.Protocol'] = 'light/network/Protocol.lua',
        ['light.network.Session'] = 'light/network/Session.lua',
        ['light.network.channel.TCPChannel'] = 'light/network/channel/TCPChannel.lua',
        ['light.network.channel.TCPServerChannel'] = 'light/network/channel/TCPServerChannel.lua',
        ['light.network.protocol.HttpProtocol'] = 'light/network/protocol/HttpProtocol.lua',
        ['light.network.protocol.WebSocketProtocol'] = 'light/network/protocol/WebSocketProtocol.lua',
        ['light.network.session.HttpServerSession'] = 'light/network/session/HttpServerSession.lua',
        ['light.network.session.HttpSession'] = 'light/network/session/HttpSession.lua',
        ['light.network.session.TCPServerSession'] = 'light/network/session/TCPServerSession.lua',
        ['light.network.session.TCPSession'] = 'light/network/session/TCPSession.lua',
        ['light.Record'] = 'light/Record.lua',
        ['light.record.Device'] = 'light/record/Device.lua',
        ['light.record.device.SQLiteDevice'] = 'light/record/device/SQLiteDevice.lua',
        ['light.record.Field'] = 'light/record/Field.lua',
        ['light.record.Query'] = 'light/record/Query.lua',
        ['light.record.Schema'] = 'light/record/Schema.lua'
      },
    },
  },
  mingw64 = MakeModule('mingw64'),
}

build = {
  platforms = platforms,
  type = 'builtin'
}
