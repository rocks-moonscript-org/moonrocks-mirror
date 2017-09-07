package = "drylib"
version = "0.0.0-0"
source = {
  url = "git://github.com/dryproject/drylib.lua.git",
  branch = "master",
}
description = {
  summary    = "DRYlib for Lua 5.3+.",
  detailed   = [[The polyglot programmer's standard library.]],
  license    = "Public Domain",
  homepage   = "https://github.com/dryproject/drylib.lua",
  --issues_url = "https://github.com/dryproject/drylib.lua/issues",
  maintainer = "Arto Bendiken <arto@dryproject.org>",
  --labels     = {"polyglot"},
}
dependencies = {
  "lua >= 5.3",
}
build = {
  type = "builtin",
  modules = {
    drylib = "drylib.lua"
  }
}
