package = "luachild"
version = "0.1-1"
source = {
  url = "git://github.com/pocomane/luachild",
}
description = {
  summary = "Spawn sub-processes and communicate with them through pipes.",
  homepage = "https://github.com/pocomane/luachild",
  license = "MIT",
  detailed = [[
Luachild is a lua module to spawn system processes and perform basic
communication with them, i.e. pipes and environment variables set. It is
compatible with lua 5.3 and luajit 2.1 and it works under windows and any os
with posix spawn+environ api (e.g. linux). The code was extracted by the
LuaDist "Ex" API implementation 2007.]]
}
supported_platforms = {
  "unix",
  "windows",
}
dependencies = {
  "lua >= 5.2, <= 5.3",
}
build = {
  platforms = {
    unix = {
      type = "builtin",
      modules = {
        ["luachild"] = {
          defines = { "USE_POSIX" },
          incdirs = { "./" },
          sources = { "luachild.c" },
        },
      },
    },
    windows = {
      type = "builtin",
      modules = {
        ["luachild"] = {
          defines = { "USE_WINDOWS" },
          incdirs = { "./" },
          sources = { "luachild.c" },
        },
      },
    },
  },
}
