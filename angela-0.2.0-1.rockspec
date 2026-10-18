package = "angela"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/mezbaulanam/angela-lua.git",
  tag = "v0.2.0",
}

description = {
  summary = "Official Lua SDK for building Angela Games Ecosystem cartridges.",
  detailed = [[
    angela-lua provides an ergonomic framework for writing deterministic
    Discord game cartridges in Lua 5.1/5.4 for the Angela Games Ecosystem.
  ]],
  homepage = "https://angelabot.in",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["angela"] = "angela/init.lua",
    ["angela.json"] = "angela/json.lua",
    ["angela.models"] = "angela/models.lua",
    ["angela.context"] = "angela/context.lua",
    ["angela.canvas"] = "angela/canvas.lua",
    ["angela.game"] = "angela/game.lua",
  },
}
