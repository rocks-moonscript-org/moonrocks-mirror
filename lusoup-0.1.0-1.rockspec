package = "lusoup"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/valhalla803/lusoup.git",
   tag = "v0.1.0"
}

description = {
   summary = "A fast, lightweight HTML parser and scraping library for Lua inspired by BeautifulSoup",
   detailed = [[
      lusoup provides a simple BeautifulSoup-like interface for parsing HTML,
      navigating DOM trees, querying elements via advanced CSS selectors,
      extracting text, decoding HTML entities, and mutating nodes in pure Lua.
   ]],
   homepage = "https://github.com/valhalla803/lusoup",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["lusoup"] = "lusoup/init.lua",
      ["lusoup.dom"] = "lusoup/dom.lua",
      ["lusoup.tokenizer"] = "lusoup/tokenizer.lua",
      ["lusoup.selector"] = "lusoup/selector.lua",
      ["lusoup.entities"] = "lusoup/entities.lua"
   }
}
