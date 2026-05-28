rockspec_format = "3.0"
package = "longcatimage-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/longcatimage_app/longcatimage-app-0.1.0.tar.gz",
  dir = "longcatimage-app-0.1.0"
}
description = {
  summary = "LongCat Image official website backlink rock.",
  detailed = "LongCat Image official website backlink rock.",
  homepage = "https://www.longcatimage.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["longcatimage_app"] = "src/longcatimage_app.lua"
  }
}
