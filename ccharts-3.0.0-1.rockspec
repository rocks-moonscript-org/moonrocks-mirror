package = "ccharts"
version = "3.0.0-1"

source = {
   url = "git+https://github.com/dethrandir/ccharts.git"
}

description = {
   summary = "Terminal chart rendering for OHLC/financial data (ccharts Lua binding)",
   detailed = [[
      Unicode + ANSI candlestick, line, pie/donut, histogram, sparkline, bar,
      stacked bar, heatmap and box-plot charts rendered to strings, from a
      single-header C library (ccharts). This is the Lua binding: a C module
      that compiles the vendored C ABI at install time. The version tracks the
      library's CCHARTS_VERSION (3.0.0).
   ]],
   homepage = "https://github.com/dethrandir/ccharts",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ccharts = "src/ccharts.lua",
      ["ccharts.version"] = "src/ccharts/version.lua",
      ccharts_core = {
         sources = { "src/ccharts_core.c", "vendor/ccharts_abi.c" },
         incdirs = { "vendor" }
      }
   }
}
