package = "utilvo-edge-shield"
version = "1.1.0-1"

source = {
   url = "git+https://github.com/utilvo/utilvo-edge-shield.git",
   tag = "v1.1.0"
}

description = {
   summary = "OpenResty / Nginx Lua module and server firewall generator for blocking rotating-IP cloud scrapers (AS132203, AS45102, AS136907).",
   detailed = [[
      Zero-dependency Lua and OpenResty module for inspecting incoming requests
      against high-abuse cloud scraper subnets while whitelisting verified SEO crawlers.
   ]],
   homepage = "https://utilvo.com/edge-shield",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["utilvo_edge_shield"] = "lua/utilvo_edge_shield.lua"
   }
}
