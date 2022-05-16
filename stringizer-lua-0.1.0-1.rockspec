package = "stringizer-lua"
version = "0.1.0-1"
source = {
  url = "hgit@github.com:jasonlam604/StringizerLua.git"
}
description = {
  summary = "Lua String manipulation made easy!",
  detailed = [[Handy little string library for string manipulation and checks]],
  homepage = "https://github.com/jasonlam604/StringizerLua",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    requests = "src/stringizer.lua"
  }
}