-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.pathwatcher"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.2-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.watcher"
local desc = "Watch paths recursively for changes in Mjolnir"

source = {url = "git://" .. url, dir = "mjolnir_asm.watcher/pathwatcher"}
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
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir._asm.pathwatcher"] = "init.lua",
    ["mjolnir._asm.pathwatcher.internal"] = "internal.m",
  },
}
