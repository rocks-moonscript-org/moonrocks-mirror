package = "iptvplaylist-m3u-tools"
version = "0.2.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/iptvplaylist-m3u-tools.git",
  tag = "v0.2.0",
  dir = "iptvplaylist-m3u-tools/packages/lua"
}
description = {
  summary = "Offline URL helpers for IPTV Playlist pages",
  homepage = "https://iptvplaylist.app/",
  license = "MIT"
}
dependencies = {"lua >= 5.1"}
build = {
  type = "builtin",
  modules = {iptvplaylist_m3u_tools = "iptvplaylist_m3u_tools.lua"}
}
