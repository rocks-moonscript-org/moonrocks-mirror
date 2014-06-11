package = "parent"
version = "1.0.0-0"
source = {
  url = "https://github.com/ajacksified/parent/archive/v1.0.0.tar.gz",
  dir = "parent-1.0.0"
}
description = {
  summary = "@-access level generator.",
  detailed = [[
    Returns the @-accss parent level.
  ]],
  homepage = "http://github.com/ajacksified/parent",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["parent"] = "src/parent.lua"
  },
  install = {
    bin = {
      ["parent"] = "bin/parent"
    }
  }
}
