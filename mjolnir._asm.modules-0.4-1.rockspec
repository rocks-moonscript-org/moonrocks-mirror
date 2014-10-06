-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.modules"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.4-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm._asm"
local desc = "Module versioning for Mjolnir."

source = {url = "git://" .. url, dir = "mjolnir_asm._asm/modules"}
description = {
  summary = desc,
  detailed = [[
Provides functions for getting version information for mjolnir modules
(actually all luarocks) as well as allow for installation and removal
of modules.

Also provides command line tool for use outside of mjolnir.
]],
  homepage = "https://" .. url,
  license = "MIT",
}

-- Dependencies:

supported_platforms = {"macosx"}
dependencies = {
  "lua >= 5.2",
  "mjolnir._asm.compat_51",
}

-- Build rules:

build = {
  type = "builtin",
  modules = {
    ["mjolnir._asm.modules"] = "init.lua",
  },
  install = {
    bin = { "mjolnir-tool" },
  },
}
