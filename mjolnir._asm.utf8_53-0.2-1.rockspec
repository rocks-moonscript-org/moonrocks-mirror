-- `package` is the require-path.
--
--    Note: this must match the filename also.
package = "mjolnir._asm.utf8_53"

-- `version` has two parts, your module's version (0.1) and the
--    rockspec's version (1) in case you change metadata without
--    changing the module's source code.
--
--    Note: the version must match the version in the filename.
version = "0.2-1"

-- General metadata:

local url = "github.com/asmagill/mjolnir_asm.data"
local desc = "Functions providing basic support for UTF-8 encodings within Mjolnir."

source = {url = "git://" .. url, dir = "mjolnir_asm.data/utf8_53"}
description = {
  summary = desc,
  detailed = desc..[[
These functions are from the UTF-8 Library as provided by the [Lua 5.3.alpha programming language](http://www.lua.org/work/). All I have provided is a wrapper to allow easy inclusion within the Mjolnir environment.
]]
,
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
    ["mjolnir._asm.utf8_53"] = "init.lua",
    ["mjolnir._asm.utf8_53.internal-utf8"] = "lutf8lib.c",
  },
}
