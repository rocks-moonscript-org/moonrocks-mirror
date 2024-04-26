package = "xmllpegparser"
version = "2.2-0"
source = {
  url = "git://github.com/jonathanpoelen/lua-xmllpegparser",
  tag = "v2.2.0"
}
description = {
  summary = "Fast XML Parser written with LPeg.",
  detailed = [[
    Enables parsing a XML file and converting it to a Lua table,
    which can be handled directly by your application.
  ]],
  homepage = "https://github.com/jonathanpoelen/lua-xmllpegparser",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "lpeg >= 1.0"
}
build = {
  type = "builtin",
  modules = {
    xmllpegparser = "xmllpegparser.lua"
  }
}
