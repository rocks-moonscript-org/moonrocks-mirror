package = "jog"
version = "0.1.0-1"
source = {
   url = "git://github.com/tarleb/jog",
   tag = "v0.1.0",
}
description = {
   summary = "Take an energetic trot along the pandoc AST.",
   detailed = [=[Apply filters to the pandoc AST; just like pandoc's `walk`,
but with element contexts, more filter targets, and mutability semantics.]=],
   homepage = "https://github.com/tarleb/jog",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.4",
}
build = {
   type = "builtin",
   modules = {
      ["jog"] = "jog.lua",
   }
}
