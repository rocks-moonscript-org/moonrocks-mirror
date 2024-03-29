package = "libphonenumber"
version = "1.0-2"
source = {
  url = "git+https://github.com/hnimminh/libphonenumber"
}
description = {
  summary = "Lua bindings for libphonenumber",
  detailed = "Lua bindings for libphonenumber",
  homepage = "https://github.com/hnimminh/libphonenumber",
  license = "MIT"
}
dependencies = {
  "lua >= 5.2"
}
build = {
  type = "make"
}
