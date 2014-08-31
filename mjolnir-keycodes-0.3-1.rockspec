package = "mjolnir-keycodes"
version = "0.3-1"
source = {url = "git://github.com/mjolnir-io/mjolnir-keycodes"}
local d = "Mjolnir module to convert between key-strings and key-codes."
description = {
  summary = d, detailed = d,
  homepage = "https://github.com/mjolnir-io/mjolnir-keycodes",
  license = "MIT",
}
supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.1, < 5.3",
}
build = {
  type = "builtin",
  modules = {
    ["mj.keycodes"] = "keycodes.lua",
    ["mj.keycodes.internal"] = "keycodes-internal.m",
  },
}
