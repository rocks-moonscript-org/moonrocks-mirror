package = "etf"
version = "1.0.2-2"

source = {
  url = "https://buffering.party/software/lua-etf/lua-etf-1.0.2.tar.gz"
}

description = {
  summary = "An Erlang External Term Format encoder and decoder",
  homepage = "https://buffering.party/software/lua-etf/",
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

