package = "ljack"
version = "0.0.1-1"
local versionNumber = version:gsub("^(.*)-.-$", "%1")
source = {
  url = "https://github.com/osch/lua-ljack/archive/v"..versionNumber..".zip",
  dir = "lua-ljack-"..versionNumber,
}
description = {
  summary = "Lua binding for the JACK Audio Connection Kit",
  homepage = "https://github.com/osch/lua-ljack",
  license = "MIT",
  detailed = [[
      Lua binding for the JACK Audio Connection Kit, see https://jackaudio.org/.
      
      This binding enables Lua scripting code to registrate ports and to manage port
      connections and Lua audio processor objects for the JACK Audio Connection Kit. 
      Realtime audio processing of the Lua processor objects has to be implemented in
      native C code. 
  ]],
}
dependencies = {
  "lua >= 5.1, <= 5.4",
}
build = {
  type = "builtin",
  modules = {
    ljack = {
      libraries = {
        "jack"
      },
      sources = { 
          "src/main.c",
          "src/client.c",
          "src/client_intern.c",
          "src/port.c",
          "src/procbuf.c",
          "src/auproc_capi_impl.c",
          "src/util.c",
          "src/error.c",
          "src/async_util.c",
          "src/ljack_compat.c",
      },
      defines = { "LJACK_VERSION="..versionNumber },
    },
  }
}
