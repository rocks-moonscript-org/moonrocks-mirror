rockspec_format = "3.0"
package = "chrono-clock"
version = "0.1.1-1"

source = {
  url = "git+https://github.com/sravioli/chrono.git",
  tag = "0.1.1",
}

description = {
  summary = "Optional native high-resolution timer for the chrono benchmarking engine",
  detailed = [[
    chrono-clock provides a C module with nanosecond-resolution wall-clock and
    CPU timers.  It is automatically detected and used by chrono when available,
    but chrono works fine without it (falling back to os.clock()).
  ]],
  homepage = "https://github.com/sravioli/chrono",
  license = "GPL-2.0",
  labels = { "benchmark", "timer", "performance" },
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["chrono.clock"] = {
      sources = { "c/clock.c" },
    },
  },
}
