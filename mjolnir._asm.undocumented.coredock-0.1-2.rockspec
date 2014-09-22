-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.undocumented.coredock"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.1-2"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.undocumented"
local desc = "Undocumented coredock features."

source = {url = "git://" .. url, dir = "mjolnir_asm.undocumented/coredock/"}
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
    ["mjolnir._asm.undocumented.coredock"] = "init.lua",
    ["mjolnir._asm.undocumented.coredock.internal"] = "internal.m",
  },
}
