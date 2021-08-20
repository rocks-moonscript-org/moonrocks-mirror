package = "st"
version = "0.0-1"
source = {
  url = "https://github.com/SmartThingsCommunity/st.lua"
}
description = {
  summary = "",
  detailed = [[
      This will be the home of the SmartThings Edge Driver library,
      but it hasn't been converted to work on anything but our
      hub yet. This package is currently for getting the same
      third-party dependencies that we make available to drivers.
  ]],
  homepage = "https://smartthings.com",
  license = "Apache 2.0"
}
dependencies = {
  "lua == 5.3",
  "cosock",
  "dkjson",
  "logface",
  "luasocket >= 3.0-rc1",
  "luasec >= 1.0",
  "lua-yaml",
  "luxure",
  "lifter_puller",
  "xml2lua",
}
build = {
  type = "builtin",
  modules = {
    st = "init.lua"
  }
}
