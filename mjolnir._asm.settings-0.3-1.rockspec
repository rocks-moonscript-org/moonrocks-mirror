-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.settings"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.3-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.sys"
local desc = "Functions for user-defined settings that persist across Mjolnir launches."

source = {url = "git://" .. url, dir = "mjolnir_asm.sys/settings"}
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
  "mjolnir._asm >= 0.1-1",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir._asm.settings"] = "init.lua",
    ["mjolnir._asm.settings.internal"] = "internal.m",
  },
}
