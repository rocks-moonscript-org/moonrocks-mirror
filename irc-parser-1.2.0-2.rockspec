package = "irc-parser"
version = "1.2.0-2"

source = {
  url = "https://buffering.party/software/lua-irc-parser/irc-parser-1.2.0.tar.gz"
}

description = {
  summary = "A library for parsing IRC lines",
  homepage = "https://buffering.party/software/lua-irc-parser/",
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

