rockspec_format = "3.0"
package = "lua-covid-data"
version = "0.2.0-0"
source = {
  url = "git+https://codeberg.org/imo/lua-covid-data",
  tag = "v0.2.0-0"
}
description = {
  summary = "Lua wrapper for Coronavirus Tracker API.",
  detailed = "Lua wrapper for the coronavirus-tracker-api (https://github.com/ExpDev07/coronavirus-tracker-api).",
  homepage = "https://codeberg.org/imo/lua-covid-data",
  license = "MIT",
  labels = { "web", "api", "wrapper" }
}
dependencies = {
  "lua >= 5.1, < 5.4",
  "lua-curl",
  "dkjson",
  --"lua-cjson == 2.1.0-1"
}
build = {
  type = "builtin",
  modules = {
    ["covid-data"] = "src/covid-data.lua"
  }
}