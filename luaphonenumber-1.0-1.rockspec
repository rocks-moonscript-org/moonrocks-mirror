package = "luaphonenumber"
version = "1.0-1"
source = {
  url = "git://github.com/singlecomm/luaphonenumber"
}
description = {
  summary = "Lua bindings for libphonenumber",
  detailed = "Lua bindings for libphonenumber",
  homepage = "http://github.com/singlecomm/luaphonenumber",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "make"
}
