rockspec_format = "3.0"
package = "grokimagine-2-com"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/grokimagine_2_com/grokimagine-2-com-0.1.0.tar.gz",
  dir = "grokimagine-2-com-0.1.0"
}
description = {
  summary = "Grok Imagine 2.0 official website backlink rock.",
  detailed = "Grok Imagine 2.0 official website backlink rock.",
  homepage = "https://www.grokimagine-2.com",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["grokimagine_2_com"] = "src/grokimagine_2_com.lua"
  }
}
