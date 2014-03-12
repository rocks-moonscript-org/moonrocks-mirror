package = "Markdown"
version = "0.13-1"
source = {
   url = "http://luaforge.net/frs/download.php/1702/markdown-0.13.tar.gz"
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
