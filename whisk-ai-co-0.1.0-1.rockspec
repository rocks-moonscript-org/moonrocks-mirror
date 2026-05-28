rockspec_format = "3.0"
package = "whisk-ai-co"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/whisk_ai_co/whisk-ai-co-0.1.0.tar.gz",
  dir = "whisk-ai-co-0.1.0"
}
description = {
  summary = "whisk-ai.co official website backlink rock.",
  detailed = "whisk-ai.co official website backlink rock.",
  homepage = "https://www.whisk-ai.co",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["whisk_ai_co"] = "src/whisk_ai_co.lua"
  }
}
