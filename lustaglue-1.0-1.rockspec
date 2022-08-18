rockspec_format = "3.0"

package = "lustaglue"
version = "1.0-1"

source = {
  url = "git+https://github.com/raygerlabs/lustaglue.git",
  tag = "v1.0-1"
}

description = {
  summary = "An extension plugin for Lustache in order to enable formatters or filters in expressions",
  homepage = "https://github.com/raygerlabs/lustaglue.git",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lustache"
}

test_dependencies = {
  "busted",
}

test = {
  type = "busted",
}

build = {
  type = "builtin",
  modules = {
    lustaglue = "src/lustaglue.lua"
  }
}
