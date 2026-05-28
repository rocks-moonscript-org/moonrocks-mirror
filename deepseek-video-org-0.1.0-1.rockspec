rockspec_format = "3.0"
package = "deepseek-video-org"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/deepseek_video_org/deepseek-video-org-0.1.0.tar.gz",
  dir = "deepseek-video-org-0.1.0"
}
description = {
  summary = "DeepSeek Video official website backlink rock.",
  detailed = "DeepSeek Video official website backlink rock.",
  homepage = "https://www.deepseek-video.org",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["deepseek_video_org"] = "src/deepseek_video_org.lua"
  }
}
