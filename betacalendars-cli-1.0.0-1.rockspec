rockspec_format = "3.0"
package = "betacalendars-cli"
version = "1.0.0-1"

source = {
   url = "git+https://github.com/mateopedersen/betacalendars-lua.git",
   tag = "v1.0.0"
}

description = {
   summary = "Command-line calendar and date utilities built on betacalendars",
   detailed = [[
The betacal command renders month and year calendars and prints date ranges or
structured year-boundary reports. Output formats include Markdown, CSV and
JSON for month grids. It uses the betacalendars core library.
]],
   homepage = "https://www.betacalendars.com/",
   issues_url = "https://github.com/mateopedersen/betacalendars-lua/issues",
   license = "MIT",
   labels = { "calendar", "date", "time", "commandline" }
}

dependencies = {
   "lua >= 5.1, < 5.5",
   "betacalendars >= 1.0.0, < 2.0.0"
}

build = {
   type = "builtin",
   install = {
      bin = { betacal = "bin/betacal" }
   }
}
