package = "productshotai-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/productshotai-site-kit.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "URL helpers and metadata utilities for ProductShot AI",
  detailed = "A tiny Lua helper for ProductShot AI canonical URLs and public page links.",
  homepage = "https://productshotai.app",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    productshotai_site_kit = "lua/productshotai_site_kit.lua"
  }
}
