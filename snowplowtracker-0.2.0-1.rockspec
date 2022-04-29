package = "SnowplowTracker"
version = "0.2.0-1"
source = {
  url = "git://github.com/snowplow/snowplow-lua-tracker",
  tag = "0.2.0"
}
description = {
  summary = "Snowplow event tracker for Lua",
  detailed = [[
     With SnowplowTracker you can collect event data from your
     Lua-based applications, Lua web servers/frameworks, or
     from the Lua scripting layer within your games or apps.
  ]],
  homepage = "https://github.com/snowplow/snowplow-lua-tracker",
  license = "Apache License 2.0"
}
dependencies = {
  "lua >= 5.1",
  "lua-curl >= 0.3.13-1",
  "base64 >= 1.5-2",
  "uuid >= 0.3-1",
  "lunajson >= 1.2.3-1",
  "urlencode >= 0.0.2-0"
}
build = {
  type = "builtin",
  modules = {
     snowplow = "src/snowplow/snowplow.lua"
  }
}
