package = "irc-formatter"
version = "1.1.1-1"

source = {
  url = "https://github.com/jprjr/lua-irc-formatter/releases/download/v1.1.1/irc-formatter-1.1.1.tar.gz"
}

description = {
  summary = "A library for formatting IRC messages",
  homepage = "https://github.com/jprjr/lua-irc-formatter",
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

