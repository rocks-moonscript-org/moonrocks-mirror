package = "cosrun"
version = "0.4-1"
source = {
  url = "git://github.com/daelvn/cosrun.git",
  tag = "v0.4"
}
description = {
  summary = "Run projects easily with CraftOS-PC 2",
  homepage = "https://github.com/daelvn/cosrun",
}
dependencies = {
  "filekit",
  "ansikit",
  "argparse",
  "lyaml"
}
build = {
  type = "builtin",
  modules = {
    ["cosrun.mount"] = "cosrun/mount.lua",
    ["cosrun.util"]  = "cosrun/util.lua"
  },
  install = {
    bin = {
      ["cosrun"] = "cosrun/cosrun.lua"
    }
  }
}