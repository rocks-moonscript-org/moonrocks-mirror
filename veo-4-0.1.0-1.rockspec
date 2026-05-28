package = "veo-4"
version = "0.1.0-1"
source = { url = "git://github.com/thuonglethi346-hub/Veo-4.git", tag = "0.1.0" }
description = {
  summary = "Minimal LuaRocks metadata package for Veo 4 VO4 AI video generator.",
  homepage = "https://www.vo4ai.org/",
  license = "MIT"
}
dependencies = {}
build = { type = "builtin", modules = { ["veo_4"] = "veo_4.lua" } }
