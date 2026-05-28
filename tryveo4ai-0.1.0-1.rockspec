rockspec_format = "3.0"
package = "tryveo4ai"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/tryveo4ai/tryveo4ai-0.1.0.tar.gz",
  dir = "tryveo4ai-0.1.0"
}
description = {
  summary = "Tryveo4AI official website backlink rock.",
  detailed = "Tryveo4AI official website backlink rock.",
  homepage = "https://tryveo4ai.org",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["tryveo4ai"] = "src/tryveo4ai.lua"
  }
}
