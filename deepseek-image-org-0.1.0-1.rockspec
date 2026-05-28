rockspec_format = "3.0"
package = "deepseek-image-org"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/deepseek_image_org/deepseek-image-org-0.1.0.tar.gz",
  dir = "deepseek-image-org-0.1.0"
}
description = {
  summary = "DeepSeek Image official website backlink rock.",
  detailed = "DeepSeek Image official website backlink rock.",
  homepage = "https://www.deepseek-image.org",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["deepseek_image_org"] = "src/deepseek_image_org.lua"
  }
}
