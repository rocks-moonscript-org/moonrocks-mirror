rockspec_format = "3.0"
package = "chrono"
version = "0.1.1-1"

source = {
  url = "git+https://github.com/sravioli/chrono.git",
  tag = "0.1.1",
}

description = {
  summary = "A zero-dependency benchmarking engine for Lua 5.1 and LuaJIT 2.x",
  detailed = [[
    chrono provides a library API for creating benchmark suites, a CLI for
    running benchmark files, dual wall-clock / CPU timers, rich statistics
    (mean, stddev, median, p95, p99, ops/sec), and multiple output formats
    (text, pretty, JSON).
  ]],
  homepage = "https://github.com/sravioli/chrono",
  license = "GPL-2.0",
  labels = { "benchmark", "performance", "profiling" },
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["chrono"] = "lua/chrono/init.lua",
    ["chrono.cli"] = "lua/chrono/cli.lua",
    ["chrono.runner"] = "lua/chrono/runner.lua",
    ["chrono.statistics"] = "lua/chrono/statistics.lua",
    ["chrono.timer"] = "lua/chrono/timer.lua",
    ["chrono.subprocess"] = "lua/chrono/subprocess.lua",
    ["chrono.devnull"] = "lua/chrono/devnull.lua",
    ["chrono.jitstats"] = "lua/chrono/jitstats.lua",
    ["chrono.jitutil"] = "lua/chrono/jitutil.lua",
    ["chrono.reporters.text"] = "lua/chrono/reporters/text.lua",
    ["chrono.reporters.pretty"] = "lua/chrono/reporters/pretty.lua",
    ["chrono.reporters.json"] = "lua/chrono/reporters/json.lua",
  },
  install = {
    bin = {
      chrono = "bin/chrono",
    },
  },
}
