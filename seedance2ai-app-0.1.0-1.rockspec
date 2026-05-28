rockspec_format = "3.0"
package = "seedance2ai-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/seedance2ai_app/seedance2ai-app-0.1.0.tar.gz",
  dir = "seedance2ai-app-0.1.0"
}
description = {
  summary = "seedance2ai.app official website backlink rock.",
  detailed = "seedance2ai.app official website backlink rock.",
  homepage = "https://www.seedance2ai.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["seedance2ai_app"] = "src/seedance2ai_app.lua"
  }
}
