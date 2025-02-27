rockspec_format = "3.0"
package = "oopsie"
version = "1.1-1"

source = {
  url = "git://github.com/CimimUxMaio/oopsie",
}

description = {
  homepage = "git://github.com/CimimUxMaio/oopsie",
  summary = "A very simple and straight to the point object-oriented programming library for Lua.",
  license = "MIT",
}

build = {
  type = "builtin",
  modules = {
    oopsie = "src/oopsie.lua",
  },
}

test_dependencies = {
  "busted",
}

test = {
  type = "busted",
}
