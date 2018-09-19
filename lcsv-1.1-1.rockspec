package = "lcsv"
version = "1.1-1"

source = {
  url = "git://github.com/daelvn/lcsv",
  tag = "v1.1"
}

description = {
  summary  = "CSV parsing and writing library",
  detailed = [[
    lcsv lets you parse CSV files, read from them and also write
    to them in a much easier manner.
  ]],
  homepage = "https://lcsv.daelvn.ga/",
  license  = "MIT/X11"
}

dependencies = {
  "lua >= 5.3",
}

build = {
  type    = "builtin",
  modules = {
    lcsv  = "lcsv.lua"
  }
}
