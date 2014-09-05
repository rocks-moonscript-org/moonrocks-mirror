-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir.7bits.mjomatic"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.1-1"

-- General metadata:

local url = "github.com/Habbie/mjolnir.7bits.mjomatic"
local desc = "OS X window management with Mjolnir, inspired by tmuxomatic."

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
  --
  -- For example, if your module depends on `mjolnir.fnutils`,
  -- uncomment the following line:
  --
  -- "mjolnir.fnutils",
  "mjolnir.screen",
  "mjolnir.alert",
  "mjolnir.cmsj.appfinder"
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    -- This is the top-level module:
    ["mjolnir.7bits.mjomatic"] = "mjomatic.lua",

    -- Note: the key on the left side is the require-path; the value
    --       on the right is the filename relative to the current dir.
  },
}
