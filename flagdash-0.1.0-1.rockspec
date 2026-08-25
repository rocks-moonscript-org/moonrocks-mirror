package = "flagdash"
version = "0.1.0-1"
source = { url = "git+https://github.com/flagdash/flagdash-lua.git", tag = "v0.1.0" }
description = {
  summary = "Official server-side FlagDash SDK for Lua",
  homepage = "https://flagdash.com/docs#sdk-lua",
  license = "MIT"
}
dependencies = { "lua >= 5.1", "luasocket >= 3.0", "luasec >= 1.2", "dkjson >= 2.6" }
build = { type = "builtin", modules = { flagdash = "src/flagdash.lua" } }
