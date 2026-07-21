package = "rewords-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/rewords-site-kit.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "URL helpers for ReWords AI",
  detailed = "Small Lua helpers for ReWords AI, an AI image text editor for photos and screenshots.",
  homepage = "https://rewordsai.app",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    rewords_site_kit = "lua/rewords_site_kit.lua"
  }
}
