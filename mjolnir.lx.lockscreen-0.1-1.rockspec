package = "mjolnir.lx.lockscreen"

version = "0.1-1"

local url = "github.com/lx75249/mjolnir.lx.lockscreen"
local desc = "Mjolnir module to lock screen immediately"

source = {
  url = "git://" .. url,
  dir = "mjolnir.lx.lockscreen"
}
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://" .. url,
  license = "MIT",
}

supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
}

build = {
  type = "make",
  variables  =  {
    CC = "clang",
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
  },

  build_variables  =  {
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA_BINDIR = "$(LUA_BINDIR)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA = "$(LUA)",
  },
}
