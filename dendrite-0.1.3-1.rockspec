package = "dendrite"
version = "0.1.3-1"
source = {
   url = "git+https://github.com/KristianJBorgwarth/dendrite.git",
   tag = "v0.1.3",
}
description = {
   summary = "A local, filesystem-based note engine for markdown vaults.",
   homepage = "https://github.com/KristianJBorgwarth/dendrite",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ["dendrite.core.frontmatter"] = "lua/dendrite/core/frontmatter.lua",
      ["dendrite.core.link"]        = "lua/dendrite/core/link.lua",
      ["dendrite.core.note"]        = "lua/dendrite/core/note.lua",
      ["dendrite.core.search"]      = "lua/dendrite/core/search.lua",
      ["dendrite.core.vault"]       = "lua/dendrite/core/vault.lua",
      ["dendrite.core.init"]        = "lua/dendrite/core/init.lua",
   }
}
