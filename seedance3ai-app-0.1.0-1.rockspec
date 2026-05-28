rockspec_format = "3.0"
package = "seedance3ai-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/seedance3ai_app/seedance3ai-app-0.1.0.tar.gz",
  dir = "seedance3ai-app-0.1.0"
}
description = {
  summary = "Seedance 3.0 official website backlink rock.",
  detailed = "Seedance 3.0 official website backlink rock.",
  homepage = "https://www.seedance3ai.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["seedance3ai_app"] = "src/seedance3ai_app.lua"
  }
}
