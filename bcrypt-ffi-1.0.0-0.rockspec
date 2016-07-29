package = "bcrypt-ffi"
version = "1.0.0-0"

source = {
  url = "git://github.com/gas-buddy/lua-bcrypt-ffi",
  tag = "1.0.0"
}

description = {
  summary = "LuaJIT FFI binding for the bcrypt password hashing algorithm",
  homepage = "https://github.com/gas-buddy/lua-bcrypt-ffi",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["bcrypt"] = "bcrypt.lua",
    libluabcrypt = {
      sources = {
        "src/bcrypt.c",
        "src/blowfish.c"
      },
      incdirs = {
        "src/"
      },
      libraries = {
        "crypto"
      }
    }
  }
}