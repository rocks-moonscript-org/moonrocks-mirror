package = "minimaxh3-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/minimaxh3-site-kit.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "URL helpers and metadata utilities for MiniMax H3",
  detailed = "A tiny Lua helper for MiniMax H3 canonical URLs and public page links.",
  homepage = "https://minimaxh3.art",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    minimaxh3_site_kit = "lua/minimaxh3_site_kit.lua"
  }
}
