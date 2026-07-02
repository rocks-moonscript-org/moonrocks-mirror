package = "seed-audio-ai-site-kit"
version = "0.1.0-1"
source = {
  url = "git://github.com/bbwdadfg/seed-audio-ai-site-kit.git",
  tag = "v0.1.0"
}
description = {
  summary = "Small unofficial metadata and URL helpers for Seed Audio AI at seedaud.io.",
  homepage = "https://seedaud.io/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    seed_audio_ai_site_kit = "seed_audio_ai_site_kit.lua"
  }
}
