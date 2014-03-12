package = "Markdown"
version = "0.31-1"
source = {
   url = "http://www.frykholm.se/files/markdown-0.31.tar.gz",
   dir = "."
}
description = {
   summary = "Markdown text-to-html markup system.",
   detailed = [[
      A pure-lua implementation of the Markdown text-to-html markup system.
   ]]
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "none",
   install = {
      lua = { "markdown.lua" },
   }
}
