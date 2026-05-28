package = "luluworlds-params"
rockspec_format = "3.0"
version = "1.1-0"
source = {
  url = "git+https://github.com/luluworlds/luluworlds-params.git",
  branch = "master"
}
description = {
  summary = "teeworlds and ddnet console parameter text parser",
  detailed = "",
  license = "Zlib",
  homepage = "https://github.com/luluworlds/luluworlds-params.git",
  issues_url = "https://github.com/luluworlds/luluworlds-params/issues",
  maintainer = "ChillerDragon <chillerdragon@gmail.com>",
  labels = { "teeworlds", "ddnet", "ddracenetwork", "game", "console", "args", "arguments", "argparse", "params", "parameters", "rcon" }
}
dependencies = {
  "lua >= 5.1, <= 5.5"
}
test_dependencies = {
   "simple-assert",
}
test = {
  type = "command",
  command = "make test"
}
build = {
  type = "builtin",
  modules = {
    ["luluworlds.params"] = "src/params.lua"
  }
}
