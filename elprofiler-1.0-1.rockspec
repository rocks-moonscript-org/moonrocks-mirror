package = "ELProfiler"
version = "1.0-1"
source = {
  url = "git://github.com/ImagicTheCat/ELProfiler",
  tag = "1.0"
}

description = {
  summary = "Embeddable Lua Profiler is a pure Lua statistical/sampling profiler.",
  detailed = [[
  ]],
  homepage = "https://github.com/ImagicTheCat/ELProfiler",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.5"
}

build = {
  type = "builtin",
  modules = {
    ELProfiler = "src/ELProfiler.lua"
  }
}
