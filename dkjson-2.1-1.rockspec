package = "dkjson"
version = "2.1-1"
source = {
  url = "http://chiselapp.com/user/dhkolf/repository/dkjson/tarball/dkjson-2.1.tar.gz?uuid=55350b663c0073dd48e26edc6ec575cc4e354986",
  file = "dkjson-2.1.tar.gz"
}
description = {
  summary = "David Kolf's JSON module for Lua",
  detailed = [[
dkjson is a module for encoding and decoding JSON data. It supports UTF-8.

JSON (JavaScript Object Notation) is a format for serializing data based
on the format for JavaScript data structures.

dkjson is written in Lua without any depencies, but
when LPeg is available dkjson uses it to speed up decoding.
]],
  homepage = "http://chiselapp.com/user/dhkolf/repository/dkjson/",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    dkjson = "dkjson.lua"
  }
}

