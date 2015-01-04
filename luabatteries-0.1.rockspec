package = "LuaBatteries"
version = "0.1"
souce = {
    url = "git@github.com:italomaia/luabatteries.git",
    tag = "v0.1"
}
description = {
    summary = "Adds python batteries to environment",
    detailed = [[
        One of the best aspects of python is the "batteries included".
        Lua does not have that. This package aims to add batteries
        to lua in the way of a simple group of helpful functions.
    ]],
    license = "MIT"
}
dependencies = {
    "lua ~> 5.0"
}
build = {
  type = "builtin",
  modules = {
    batteries = "batteries.lua"
  }
}