package = "digibouquetai-site-kit"
version = "0.1.0-1"
source = {
  url = "git+https://github.com/bbwdadfg/digibouquetai-site-kit.git",
  tag = "luarocks-v0.1.0"
}
description = {
  summary = "URL helpers for DigiBouquet AI",
  detailed = "Canonical URL helpers for DigiBouquet AI digital bouquets and AI gift cards.",
  homepage = "https://digibouquetai.com",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    digibouquetai_site_kit = "lua/digibouquetai_site_kit.lua"
  }
}
