package = "dumper"
version = "0.1.0-1"
source = {
  url = "git://github.com/edubart/lua-dumper.git",
  tag = "v0.1.0"
}
description = {
  summary = "A value dumping library for quick debugging",
  detailed = [[A small library for dumping lua variables quickly.
This library is typically used for quick debugging values
to the terminal where one would use `print` but want
more information about the value (like table content),
output to stderr by default (or other file handle) and
optionally time elapsed.
  ]],
  homepage = "https://github.com/edubart/lua-dumper",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  'inspect >= 3.1.1',
  'chronos >= 0.2'
}
build = {
  type = "builtin",
  modules = {
    ['dumper'] = 'dumper.lua',
  }
}
