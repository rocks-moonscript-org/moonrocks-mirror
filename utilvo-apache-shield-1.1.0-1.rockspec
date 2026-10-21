package = "utilvo-apache-shield"
version = "1.1.0-1"
source = {
   url = "git+https://github.com/utilvo/apache-edge-shield.git",
   tag = "v1.1.0"
}
description = {
   summary = "Apache 2.4 mod_lua, mod_authz_core CIDR & .htaccess Cloud Scraper Firewall powered by Utilvo EdgeShield",
   detailed = [[
      Official Apache 2.4 (mod_lua, mod_authz_core, mod_remoteip) and .htaccess bot firewall configuration
      for blocking AS132203 (Tencent Cloud), AS45102 (Alibaba Cloud), and AS136907 (Huawei Cloud) scrapers
      while preserving verified Googlebot and Bingbot crawlers.
      Docs: https://utilvo.com/edge-shield
      Raw Apache Config: https://utilvo.com/edge-shield/apache-bot-shield.conf
   ]],
   homepage = "https://utilvo.com/edge-shield",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {}
}
