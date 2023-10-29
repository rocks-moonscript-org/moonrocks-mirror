package = "santoku-cli"
version = "0.0.93-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com:treadwelllane/lua-santoku.git",
  tag = "0.0.93-1"
}

description = {
  homepage = "https://github.com/treadwelllane/lua-santoku",
  license = "MIT"
}

dependencies = {
  "santoku == 0.0.93-1",
  "argparse >= 0.7.1-1",
  "luafilesystem >= 1.8.0-1"
}

build = {
  type = "make",
  install_target = "luarocks-cli-install",
  install_variables = {
    INST_BINDIR = "$(BINDIR)",
  },
}
