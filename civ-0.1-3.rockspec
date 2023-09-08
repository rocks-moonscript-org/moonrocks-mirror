package = "civ"
version = "0.1-3"
source = {
  url = "git+ssh://git@github.com/civboot/civlib.git",
}
description = {
  summary = "core lua library for the civboot.org project",
  homepage = "https://github.com/civboot/civlib",
  license = "UNLICENSE",
}
dependencies = {
  "lua ~> 5.3",
}
build = {
  type = "builtin",
  modules = {
    civ = "lua/civ.lua",
    ["civ.gap"] = "lua/civ/gap.lua",
    ["civ.sh"] = "lua/civ/sh.lua",
    ["civ.unix"] = "lua/civ/unix.lua",
  }
}
