package = "Markdown"
version = "0.26-1"
source = {
   url = "http://www.frykholm.se/files/markdown.lua",
   md5 = "66770f22185abc6340ca3dabafc02911"
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
