package = "etf"
version = "1.0.0-1"

source = {
  url = "https://github.com/jprjr/lua-etf/releases/download/v1.0.0/lua-etf-1.0.0.tar.gz"
}

description = {
  summary = "An Erlang External Term Format encoder and decoder",
  homepage = "https://github.com/jprjr/lua-etf",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["etf"] = {
      sources = {
        "csrc/etf.c",
      },
    },
  }
}

dependencies = {
  "lua >= 5.1",
}

