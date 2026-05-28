rockspec_format = "3.0"
package = "seedream6-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/seedream6_app/seedream6-app-0.1.0.tar.gz",
  dir = "seedream6-app-0.1.0"
}
description = {
  summary = "Seedream 6.0 official website backlink rock.",
  detailed = "Seedream 6.0 official website backlink rock.",
  homepage = "https://www.seedream6.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["seedream6_app"] = "src/seedream6_app.lua"
  }
}
