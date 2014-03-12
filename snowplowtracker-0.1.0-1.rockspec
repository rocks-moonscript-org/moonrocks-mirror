package = "SnowplowTracker"
version = "0.1.0-1"
source = {
  url = "http://snowplow-hosted-assets.s3.amazonaws.com/1-trackers/lua-tracker/snowplowtracker-0.1.0.tar.gz"
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
  "lua ~> 5.1",
  "luasocket >= 2.0.2"
}
build = {
  type = "builtin",
  modules = {
     snowplow = "src/snowplow/snowplow.lua"
  }
}
