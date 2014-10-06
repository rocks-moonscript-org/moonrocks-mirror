-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.eventtap.event"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.2-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.ipc"
local desc = "Functionality to inspect, modify, and create events for mjolnir_asm.eventtap is provided by this module."

source = {url = "git://" .. url, dir="mjolnir_asm.ipc/eventtap/event"}
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
  "mjolnir.keycodes",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir._asm.eventtap.event"] = "init.lua",
    ["mjolnir._asm.eventtap.event.internal"] = "internal.m",
  },
}
