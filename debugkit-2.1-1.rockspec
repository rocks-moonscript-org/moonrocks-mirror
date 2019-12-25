package = "debugkit"
version = "2.1-1"
source  = {
  url = "git://github.com/daelvn/debugkit",
  tag = "v2.1"
}
description = {
  summary = "Print debugging made easier.",
  homepage = "https://github.com/daelvn/debugkit"
}
dependencies = {
  "filekit",
  "guardia >= 3.0.3",
  "ansikit"
}
build = {
  type = "builtin",
  modules = {
    ["debugkit.inspect"] = "debugkit/inspect.lua",
    ["debugkit.log.init"] = "debugkit/log/init.lua",
    ["debugkit.log.loggers"] = "debugkit/log/loggers.lua",
    ["debugkit.log.sinks"] = "debugkit/log/sinks.lua"
  }
}