-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.ui.sound"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.1-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.ui"
local desc = "Mjolnir access to NSSound via lua."

source = {url = "git://" .. url, dir = "mjolnir_asm.ui/sound"}
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
--  "mjolnir._asm",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir._asm.ui.sound"] = "init.lua",
    ["mjolnir._asm.ui.sound.internal"] = "internal.m",
  },
}
