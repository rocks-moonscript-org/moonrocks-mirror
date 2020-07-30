package = "mtmsg"
version = "0.4.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-mtmsg/archive/v"..versionNumber..".zip",
  dir = "lua-mtmsg-"..versionNumber,
}
description = {
  summary = "Low-level multi-threading message buffers",
  homepage = "https://github.com/osch/lua-mtmsg",
  license = "MIT/X11",
  detailed = [[
    Low-level in-memory message buffers for inter-thread communication. 
    This implementation is independent from the underlying threading library
    (e.g. `lanes` or `lua-llthreads2`)
  ]],
}
dependencies = {
  "lua >= 5.1, <= 5.4",
}
build = {
  type = "builtin",
  platforms = {
    unix = {
      modules = {
        mtmsg = {
          libraries = {"pthread"},
        }
      }
    },
    windows = {
      modules = {
        mtmsg = {
          libraries = {"kernel32"},
        }
      }
    }
  },
  modules = {
    mtmsg = {
      sources = { 
          "src/main.c",
          "src/buffer.c",
          "src/listener.c",
          "src/writer.c",
          "src/reader.c",
          "src/serialize.c",
          "src/error.c",
          "src/util.c",
          "src/async_util.c",
          "src/mtmsg_compat.c",
      },
      defines = { "MTMSG_VERSION="..versionNumber },
    },
  }
}