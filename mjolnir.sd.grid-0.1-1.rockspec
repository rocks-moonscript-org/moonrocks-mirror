package = "mjolnir.sd.grid"
version = "0.1-1"

-- General metadata:

local url = "github.com/sdegutis/mjolnir.sd.grid"
local desc = "Mjolnir module for moving/resizing your windows along a virtual grid."

source = {url = "git://" .. url}
description = {
  summary = desc,
  detailed = desc,
  homepage = "https://" .. url,
  license = "MIT",
}

-- Dependencies:

supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir.fnutils",
  "mjolnir.application",
  "mjolnir.alert",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir.sd.grid"] = "grid.lua",
  },
}
