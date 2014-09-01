package = "mjolnir-application"
version = "0.1-1"
local url = "github.com/mjolnir-io/mjolnir-core"
local desc = "Mjolnir module to inspect and manipulate running applications and their windows."
source = {url = "git://" .. url}
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://" .. url,
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir-fnutils",
  "mjolnir-geometry",
}
build = {
  type = "builtin",
  modules = {
    ["mj.application"] = "application.lua",
    ["mj.application.internal"] = "application.m",
    ["mj.window"] = "window.lua",
    ["mj.window.internal"] = "window.m",
  },
}
