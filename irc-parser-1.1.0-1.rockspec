package = "irc-parser"
version = "1.1.0-1"

source = {
  url = "https://github.com/jprjr/lua-irc-parser/releases/download/v1.1.0/irc-parser-1.1.0.tar.gz"
}

description = {
  summary = "A library for parsing IRC lines",
  homepage = "https://github.com/jprjr/lua-irc-parser",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["irc-parser"] = "src/irc-parser.lua",
    ["irc-parser.lpeg"] = "src/irc-parser/lpeg.lua",
    ["irc-parser.fallback"] = "src/irc-parser/fallback.lua",
  }
}

dependencies = {
  "lua >= 5.1",
}

