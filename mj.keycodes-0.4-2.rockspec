package = "mj.keycodes"
version = "0.4-2"
local url = "github.com/mjolnir-io/mjolnir-core"
local desc = "Mjolnir module to convert between key-strings and key-codes."
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
}
build = {
  type = "builtin",
  modules = {
    ["mj.keycodes"] = "keycodes.lua",
    ["mj.keycodes.internal"] = "keycodes-internal.m",
  },
}
