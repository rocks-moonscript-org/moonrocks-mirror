package = "facialharmonyai-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/facialharmonyai-site-kit.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "URL helpers and metadata utilities for FacialHarmonyAI",
  detailed = "A tiny Lua helper for FacialHarmonyAI canonical URLs and report links.",
  homepage = "https://facialharmonyai.com",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    facialharmonyai_site_kit = "lua/facialharmonyai_site_kit.lua"
  }
}
