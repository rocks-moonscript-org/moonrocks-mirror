package = "firecrawl-credit-planner"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/jaizendra-netizen/firecrawl-credit-planner.git",
   tag = "v1.0.0"
}
description = {
   summary = "Lua CLI that counts Firecrawl credits for pages, JSON extraction, PDFs, search and x.com requests, then picks the cheape",
   detailed = "Lua CLI that counts Firecrawl credits for pages, JSON extraction, PDFs, search and x.com requests, then picks the cheapest plan with pay-as-you-go top-ups, from published rates.",
   homepage = "https://www.onegtmlab.dev/tool-directory/compare/apify-vs-firecrawl",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["firecrawl_credit_planner"] = "src/firecrawl_credit_planner.lua"
   },
   install = {
      bin = { ["firecrawl-credit-planner"] = "bin/firecrawl-credit-planner" }
   }
}
