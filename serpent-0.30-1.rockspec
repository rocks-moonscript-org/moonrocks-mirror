package = "serpent"
version = "0.30-1"
source = {
  url = "https://github.com/pkulchenko/serpent.git",
  tag = "0.30",
}

description = {
  summary = "Lua serializer and pretty printer",
  homepage = "https://github.com/pkulchenko/serpent",
  maintainer = "Paul Kulchenko <paul@kulchenko.com>",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

build = {
  type = "builtin",
  modules = {
    ["serpent"] = "src/serpent.lua",
  },
  copy_directories = { "t" },
}
