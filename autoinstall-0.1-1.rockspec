package = "autoinstall"
version = "0.1-1"

source = {
  url = "git://github.com/saucisson/autoinstall",
}

description = {
  summary     = "Automatically install missing system dependencies",
  detailed    = [[]],
  license     = "MIT/X11",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua        = 5.1",
  "luasocket >= 2",
}

build = {
  type    = "builtin",
  modules = {
    ["autoinstall.client"] = "src/autoinstall/client.lua",
    ["autoinstall.server"] = "src/autoinstall/server.lua",
    ["autoinstall"       ] = {
       sources   = { "src/autoinstall.c" },
       defines   = {},
       libraries = { "c", "dl", "lua5.1", },
       incdirs   = {},
       libdirs   = {},
    },
  },
  install = {
    bin = {
      ["autoinstall"] = "src/autoinstall.sh",
    },
  },
}
