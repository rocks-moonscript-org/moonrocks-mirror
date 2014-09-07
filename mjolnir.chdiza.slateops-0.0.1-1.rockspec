package = "mjolnir.chdiza.slateops"
version = "0.0.1-1"

-- General metadata:
local url = "github.com/chdiza/mjolnir.chdiza.slateops"
local desc = "Mjolnir module for reproducing Slate's window-movement operations."

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
  -- You can add Mjolnir core modules as dependencies,
  -- i.e. "mjolnir.application", "mjolnir.hotkey", whatever.
  "mjolnir.fnutils",
  "mjolnir.keycodes",
  "mjolnir.screen",
  "mjolnir.application",
  "mjolnir.geometry",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    -- This is the top-level module:
    ["mjolnir.chdiza.slateops"] = "slateops.lua",

    -- Note: the key on the left side is the require-path; the value
    --       on the right is the filename relative to the current dir.
  },
}
