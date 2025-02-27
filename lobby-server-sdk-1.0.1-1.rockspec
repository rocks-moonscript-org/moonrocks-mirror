package = "lobby-server-sdk"
version = "1.0.1-1"
source = {
   url = "https://github.com/GrapeAppleFruit/the-night-shift-sdk/archive/v1.0.1.zip",
   dir = "the-night-shift-sdk-1.0.1"
}
description = {
   summary = "The lobby server SDK for Gas Station: The Night Shift",
   detailed = [[
      The lobby server sdk for my game Gas Station: The Night Shift.
      Includes lobby creation, deletion, joining, leaving, and starting.
   ]],
   homepage = "https://github.com/GrapeAppleFruit/the-night-shift-sdk",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 3.0",
   "lua-cjson >= 2.1"
}
build = {
   type = "builtin",
   modules = {
      ["gas-sdk"] = "gas-sdk/init.lua",
      ["gas-sdk.utils"] = "gas-sdk/utils.lua"
   }
}