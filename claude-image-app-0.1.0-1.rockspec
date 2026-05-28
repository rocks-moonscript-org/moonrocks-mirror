rockspec_format = "3.0"
package = "claude-image-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/claude_image_app/claude-image-app-0.1.0.tar.gz",
  dir = "claude-image-app-0.1.0"
}
description = {
  summary = "Claude Image official website backlink rock.",
  detailed = "Claude Image official website backlink rock.",
  homepage = "https://www.claude-image.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["claude_image_app"] = "src/claude_image_app.lua"
  }
}
