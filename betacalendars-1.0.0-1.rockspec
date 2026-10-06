rockspec_format = "3.0"
package = "betacalendars"
version = "1.0.0-1"

source = {
   url = "git+https://github.com/mateopedersen/betacalendars-lua.git",
   tag = "v1.0.0"
}

description = {
   summary = "Deterministic calendar grids, recurrence and date-boundary utilities for Lua",
   detailed = [[
Beta Calendars for Lua provides presentation-neutral calendar structures for
applications and test suites. It includes configurable month and year grids,
date ranges, bounded recurrence rules, business-day helpers and temporal
boundary analysis while keeping rendering decisions outside the core library.
]],
   homepage = "https://www.betacalendars.com/",
   issues_url = "https://github.com/mateopedersen/betacalendars-lua/issues",
   license = "MIT",
   labels = { "calendar", "date", "time", "test" }
}

dependencies = {
   "lua >= 5.1, < 5.5"
}

test = {
   type = "command",
   command = "lua",
   flags = { "spec/run.lua" }
}

build = {
   type = "builtin",
   modules = {
      ["betacalendars"] = "src/betacalendars/init.lua",
      ["betacalendars.date"] = "src/betacalendars/date.lua",
      ["betacalendars.grid"] = "src/betacalendars/grid.lua",
      ["betacalendars.year"] = "src/betacalendars/year.lua",
      ["betacalendars.range"] = "src/betacalendars/range.lua",
      ["betacalendars.recurrence"] = "src/betacalendars/recurrence.lua",
      ["betacalendars.business"] = "src/betacalendars/business.lua",
      ["betacalendars.boundary"] = "src/betacalendars/boundary.lua",
      ["betacalendars.export.csv"] = "src/betacalendars/export/csv.lua",
      ["betacalendars.export.markdown"] = "src/betacalendars/export/markdown.lua",
      ["betacalendars.export.json"] = "src/betacalendars/export/json.lua"
   }
}
