package = "irc-formatter"
version = "1.1.1-2"

source = {
  url = "https://buffering.party/software/lua-irc-formatter/lua-irc-formatter-v1.1.1.tar.gz"
}

description = {
  summary = "A library for formatting IRC messages",
  homepage = "https://buffering.party/software/lua-irc-formatter/",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["irc-formatter"] = "src/irc-formatter.lua",
  }
}

dependencies = {
  "lua >= 5.1",
}

