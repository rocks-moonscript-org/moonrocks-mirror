rockspec_format = "3.0"
package = "hoffresearch"
version = "0.0.1-1"
source = {
  url = "file:///private/tmp/claude-501/-Users-nn-Dev-infra/fe85149e-b890-4f98-a2b1-bfaf161dc413/scratchpad/lr/hoffresearch-0.0.1.tar.gz",
  dir = "hoffresearch"
}
description = {
  summary = "Hoff Research namespace. Placeholder package, the real thing lands here later.",
  homepage = "https://hoffresearch.com",
  license = "MIT",
  maintainer = "Brenner Cruvinel"
}
dependencies = { "lua >= 5.1" }
build = {
  type = "builtin",
  modules = { hoffresearch = "hoffresearch.lua" }
}
