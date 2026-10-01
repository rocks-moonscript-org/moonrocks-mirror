rockspec_format = "3.0"
package = "brennercruvinel"
version = "0.0.1-1"
source = {
  url = "file:///private/tmp/claude-501/-Users-nn-Dev-infra/fe85149e-b890-4f98-a2b1-bfaf161dc413/scratchpad/lr/brennercruvinel-0.0.1.tar.gz",
  dir = "brennercruvinel"
}
description = {
  summary = "Brenner Cruvinel namespace. Placeholder package, the real thing lands here later.",
  homepage = "https://github.com/brennercruvinel",
  license = "MIT",
  maintainer = "Brenner Cruvinel"
}
dependencies = { "lua >= 5.1" }
build = {
  type = "builtin",
  modules = { brennercruvinel = "brennercruvinel.lua" }
}
