-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.compat_51"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.4-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm._asm"
local desc = "Provide Lua 5.1 compatibility functions in Mjolnir"

source = {url = "git://" .. url, dir = "mjolnir_asm._asm/compat_51"}
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
    ["mjolnir._asm.compat_51"] = "init.lua",
    ["mjolnir._asm.compat_51.internal"] = "internal.m",
  },
}
