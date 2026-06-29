package = "m3u8-player-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/m3u8-player-site-kit.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "URL helpers for M3U8 Player",
  detailed = "Small Lua helpers for M3U8 Player, an online M3U8, HLS, and IPTV stream player.",
  homepage = "https://m3u8-player.net",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    m3u8_player_site_kit = "lua/m3u8_player_site_kit.lua"
  }
}
