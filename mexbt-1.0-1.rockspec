package = "mexbt"
version = "1.0-1"

source = {
  url = "git://github.com/meXBT/mexbt-lua.git"
}

description = {
  summary = "A lightweight lua client for the meXBT exchange API",
  homepage = "https://github.com/meXBT/mexbt-lua",
  license = "MIT"
}

dependencies = {
  "lua >= 5.2, < 5.3",
  
  "luasec",
  "luasocket",
  "lua-cjson ~> 2.1"
}

build = {
  type = "builtin",
  modules = {
    ["mexbt"] = "lib/base.lua",
    ["mexbt.account"] = "lib/account.lua",
    ["mexbt.sha2"] = {
      sources = { "src/sha2.c", "src/sha2lib.c" },
      incdirs = { "src/" },
      defines = { "SHA2_USE_INTTYPES_H", "BYTE_ORDER", "LITTLE_ENDIAN" },
    },
    ["mexbt.hmac"] = "lib/hmac.lua"
  }
}