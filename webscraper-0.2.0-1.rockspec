package = "webscraper"
version = "0.2.0-1"
source = {
   url = "git+https://github.com/Desvelao/lua-webscraper",
   tag = "v0.2.0"
}
description = {
   detailed = [[
Scrap data from static webpages (no dynamic JavaScript). Define sites with specific filters to transform and validate the data.
]],
   homepage = "https://github.com/Desvelao/lua-webscraper",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.2",
   "lua-requests == 1.2",
   "htmlparser == 0.3.9",
   "lua-zlib == 1.2",
   "dkjson == 2.8-1",
   "busted == 2.2.0"
}
build = {
   type = "builtin",
   modules = {
      ["webscraper"] = "src/webscraper/init.lua",
      ["webscraper.web_scraper.web_scraper"] = "src/webscraper/web_scraper/web_scraper.lua",
      ["webscraper.web_scraper.dsl_filter"] = "src/webscraper/web_scraper/dsl_filter.lua",
      ["webscraper.web_scraper.expr"] = "src/webscraper/web_scraper/expr.lua",
      ["webscraper.filters.filters.init"] = "src/webscraper/filters/filters/init.lua",
      ["webscraper.filters.filters.repository.attr"] = "src/webscraper/filters/filters/repository/attr.lua",
      ["webscraper.filters.filters.repository.lowercase"] = "src/webscraper/filters/filters/repository/lowercase.lua",
      ["webscraper.filters.filters.repository.match"] = "src/webscraper/filters/filters/repository/match.lua",
      ["webscraper.filters.filters.repository.parse_date"] = "src/webscraper/filters/filters/repository/parse_date.lua",
      ["webscraper.filters.filters.repository.replace"] = "src/webscraper/filters/filters/repository/replace.lua",
      ["webscraper.filters.filters.repository.text"] = "src/webscraper/filters/filters/repository/text.lua",
      ["webscraper.filters.filters.repository.to_boolean"] = "src/webscraper/filters/filters/repository/to_boolean.lua",
      ["webscraper.filters.filters.repository.to_negate"] = "src/webscraper/filters/filters/repository/to_negate.lua",
      ["webscraper.filters.filters.repository.to_number"] = "src/webscraper/filters/filters/repository/to_number.lua",
      ["webscraper.filters.filters.repository.trim"] = "src/webscraper/filters/filters/repository/trim.lua",
      ["webscraper.filters.filters.repository.uppercase"] = "src/webscraper/filters/filters/repository/uppercase.lua",
      ["webscraper.filters.validators.init"] = "src/webscraper/filters/validators/init.lua",
      ["webscraper.filters.validators.repository.is_boolean"] = "src/webscraper/filters/validators/repository/is_boolean.lua",
      ["webscraper.filters.validators.repository.is_number"] = "src/webscraper/filters/validators/repository/is_number.lua",
      ["webscraper.filters.validators.repository.is_string"] = "src/webscraper/filters/validators/repository/is_string.lua",
   }
}
