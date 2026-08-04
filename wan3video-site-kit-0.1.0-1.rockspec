package = "wan3video-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/wan3video-site-kit.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "URL helpers and metadata utilities for WAN 3.0 Video",
  detailed = "A tiny Lua helper for WAN 3.0 Video canonical URLs and public page links.",
  homepage = "https://wan3video.art",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    wan3video_site_kit = "lua/wan3video_site_kit.lua"
  }
}
