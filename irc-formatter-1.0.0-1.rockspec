package = "irc-formatter"
version = "1.0.0-1"

source = {
  url = "https://github.com/jprjr/lua-irc-formatter/releases/download/v1.0.0/irc-formatter-1.0.0.tar.gz"
}

description = {
  summary = "A library for parsing IRC lines",
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

