package = "hash-code"
version = "0.1.1-1"
source = {
  url = "git://github.com/zhaoyang1221/lua-hash-code.git",
  tag = "v0.1.1"
}
description = {
  summary = "A simple library for hashing code in java implemented in C++",
  detailed = [[
    A small library with hash code in java string implemented in C++.
  ]],
  homepage = "https://github.com/zhaoyang1221/lua-hash-code",
  license = "Apache License"
}
dependencies = {
  "lua >= 5.1",
  "luarocks-build-cpp"
}
build = {
  type = "cpp",
  variables = {
    LUA_LIBDIR = "$(LUA_DIR)/lib"
  },
  modules = {
    hash_code = {
      sources = {
        "src/hash_code.cpp",
        "l_hash_code.cpp"
      },
      incdirs = {
        "./src"
      }
    }
  }
}