-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.hydra.undocumented"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.1-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.hydra"
local desc = "Hydra's spaces module setosxshadows function for Mjolnir. This module uses undocumented APIs."

source = {url = "git://" .. url, dir = "mjolnir_asm.hydra/undocumented"}
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
    ["mjolnir._asm.hydra.undocumented"] = "init.lua",
    ["mjolnir._asm.hydra.undocumented.internal"] = "internal.m",
  },
}
