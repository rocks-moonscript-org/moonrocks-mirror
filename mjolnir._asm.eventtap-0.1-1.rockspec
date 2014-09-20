-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.eventtap"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.1-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.eventtap"
local desc = "For tapping into input events (mouse, keyboard, trackpad) for observation and possibly overriding them. This module requires mjolnir_asm.eventtap.event."

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
  "mjolnir._asm.eventtap.event",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir._asm.eventtap"] = "init.lua",
    ["mjolnir._asm.eventtap.internal"] = "internal.m",
  },
}
