package = "tiedown"
version = "0.1.0-1"
source = {
   url = "https://github.com/truckleap/tiedown/archive/refs/tags/v0.1.0.tar.gz",
   dir = "tiedown-0.1.0"
}
description = {
   summary = "Minimum tiedown count and aggregate WLL check for flatbed cargo (49 CFR 393.110 and 393.106).",
   detailed = [[
Pure-Lua helpers for cargo securement on open-deck trailers: how many straps
or chains an article needs by length and weight, how much working load limit
each one contributes, and whether a planned securement meets the federal floor.
]],
   homepage = "https://truckleap.com/dispatch/flatbed",
   license = "MIT",
   maintainer = "George Green <truckleap@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      tiedown = "tiedown.lua"
   }
}
