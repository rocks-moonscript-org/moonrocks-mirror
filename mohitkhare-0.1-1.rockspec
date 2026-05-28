package = "mohitkhare"
version = "0.1-1"
source = {
  url = "git://github.com/arnaudleroy-studio/mohitkhare-lua",
  tag = "v0.1"
}
description = {
  summary = "Lua text analysis and content utilities by Mohit Khare",
  detailed = [[
    mohitkhare provides Lua utility functions for text analysis and content
    processing. Includes token estimation for LLM context windows, word
    counting, reading time calculation, and URL slug generation. Built for
    content pipelines, NLP preprocessing, and developer tooling.
  ]],
  homepage = "https://mohitkhare.me",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["mohitkhare"] = "src/mohitkhare.lua"
  }
}
