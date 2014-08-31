package = "mjolnir-keycodes"
version = "0.2-1"
source = {url = "git://github.com/mjolnir-io/mjolnir-keycodes"}
description = {
  summary = "Mjolnir module to convert between key-strings and key-codes.",
  detailed = "Mjolnir module to convert between key-strings and key-codes.",
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
