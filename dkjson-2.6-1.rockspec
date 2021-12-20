package = "dkjson"
version = "2.6-1"
source = {
  url = "http://dkolf.de/src/dkjson-lua.fsl/tarball/dkjson-2.6.tar.gz?uuid=release_2_6",
  file = "dkjson-2.6.tar.gz"
}
description = {
  summary = "David Kolf's JSON module for Lua",
  detailed = [[
dkjson is a module for encoding and decoding JSON data. It supports UTF-8.

JSON (JavaScript Object Notation) is a format for serializing data based
on the syntax for JavaScript data structures.

dkjson is written in Lua without any dependencies, but
when LPeg is available dkjson can use it to speed up decoding.
]],
  homepage = "http://dkolf.de/src/dkjson-lua.fsl/",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1, < 5.5"
}
build = {
  type = "builtin",
  modules = {
    dkjson = "dkjson.lua"
  }
}

