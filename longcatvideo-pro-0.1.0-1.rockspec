rockspec_format = "3.0"
package = "longcatvideo-pro"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/longcatvideo_pro/longcatvideo-pro-0.1.0.tar.gz",
  dir = "longcatvideo-pro-0.1.0"
}
description = {
  summary = "LongCat Video official website backlink rock.",
  detailed = "LongCat Video official website backlink rock.",
  homepage = "https://www.longcatvideo.pro",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["longcatvideo_pro"] = "src/longcatvideo_pro.lua"
  }
}
