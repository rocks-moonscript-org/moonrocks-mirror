package = "Light"
version = "0.3-3"

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
    ['light.object'] = 'light/object.lua',
    ['light.log'] = 'light/log.lua',
    ['light.worker'] = 'light/worker.lua',
    ['light.worker.event_worker'] = 'light/worker/event_worker.lua',
    ['light.network.channel'] = 'light/network/channel.lua',
    ['light.network.protocol'] = 'light/network/protocol.lua',
    ['light.network.session'] = 'light/network/session.lua',
    ['light.network.channel.tcp_channel'] = 'light/network/channel/tcp_channel.lua',
    ['light.network.channel.tcp_server_channel'] = 'light/network/channel/tcp_server_channel.lua',
    ['light.network.protocol.http_protocol'] = 'light/network/protocol/http_protocol.lua',
    ['light.network.protocol.websocket_protocol'] = 'light/network/protocol/websocket_protocol.lua',
    ['light.network.session.http_server_session'] = 'light/network/session/http_server_session.lua',
    ['light.network.session.http_session'] = 'light/network/session/http_session.lua',
    ['light.network.session.tcp_server_session'] = 'light/network/session/tcp_server_session.lua',
    ['light.network.session.tcp_session'] = 'light/network/session/tcp_session.lua',
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
    ['light.record'] = 'light/record.lua',
    ['light.record.device'] = 'light/record/device.lua',
    ['light.record.device.sqlite_device'] = 'light/record/device/sqlite_device.lua',
    ['light.record.field'] = 'light/record/field.lua',
    ['light.record.query'] = 'light/record/query.lua',
    ['light.record.schema'] = 'light/record/schema.lua'
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
        ['light.object'] = 'light/object.lua',
        ['light.log'] = 'light/log.lua',
        ['light.worker'] = 'light/worker.lua',
        ['light.worker.event_worker'] = 'light/worker/event_worker.lua',
        ['light.network.channel'] = 'light/network/channel.lua',
        ['light.network.protocol'] = 'light/network/protocol.lua',
        ['light.network.session'] = 'light/network/session.lua',
        ['light.network.channel.tcp_channel'] = 'light/network/channel/tcp_channel.lua',
        ['light.network.channel.tcp_server_channel'] = 'light/network/channel/tcp_server_channel.lua',
        ['light.network.protocol.http_protocol'] = 'light/network/protocol/http_protocol.lua',
        ['light.network.protocol.websocket_protocol'] = 'light/network/protocol/websocket_protocol.lua',
        ['light.network.session.http_server_session'] = 'light/network/session/http_server_session.lua',
        ['light.network.session.http_session'] = 'light/network/session/http_session.lua',
        ['light.network.session.tcp_server_session'] = 'light/network/session/tcp_server_session.lua',
        ['light.network.session.tcp_session'] = 'light/network/session/tcp_session.lua',
        ['light.record'] = 'light/record.lua',
        ['light.record.device'] = 'light/record/device.lua',
        ['light.record.device.sqlite_device'] = 'light/record/device/sqlite_device.lua',
        ['light.record.field'] = 'light/record/field.lua',
        ['light.record.query'] = 'light/record/query.lua',
        ['light.record.schema'] = 'light/record/schema.lua'
      },
    },
  },
  mingw64 = MakeModule('mingw64'),
}

build = {
  platforms = platforms,
  type = 'builtin'
}
