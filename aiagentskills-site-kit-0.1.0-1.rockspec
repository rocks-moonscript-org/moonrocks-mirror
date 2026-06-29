package = "aiagentskills-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/aiagentskills-site-kit.git",
  tag = "v0.1.0"
}
description = {
  summary = "URL helpers for AI Agent Skills",
  detailed = "Small Lua helpers for AI Agent Skills, a curated Claude, Codex, and AI agent skills directory.",
  homepage = "https://aiagentskills.net",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    aiagentskills_site_kit = "lua/aiagentskills_site_kit.lua"
  }
}
