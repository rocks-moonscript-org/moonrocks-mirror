rockspec_format = "3.0"
package = "gpt-image-2-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/gpt_image_2_app/gpt-image-2-app-0.1.0.tar.gz",
  dir = "gpt-image-2-app-0.1.0"
}
description = {
  summary = "GPT Image 2 official website backlink rock.",
  detailed = "GPT Image 2 official website backlink rock.",
  homepage = "https://www.gpt-image-2.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["gpt_image_2_app"] = "src/gpt_image_2_app.lua"
  }
}
