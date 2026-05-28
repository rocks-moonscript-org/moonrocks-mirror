package = "dnsrobot"
version = "0.1.0-1"
source = {
   url = "git://github.com/dnsrobot/dnsrobot-lua.git",
   tag = "v0.1.0",
}
description = {
   summary = "Official Lua client for DNS Robot (dnsrobot.net) — DNS lookups, WHOIS, SSL checks, and network tools.",
   detailed = [[
      Official Lua client for DNS Robot (https://dnsrobot.net) — 53 free online
      DNS and network tools. Provides DNS lookups, WHOIS queries, SSL certificate
      checks, SPF/DKIM/DMARC validation, MX/NS lookups, IP geolocation, HTTP
      headers analysis, and port checking. Uses LuaSocket for HTTP requests.

      Available tools at https://dnsrobot.net/all-tools:
      - DNS Lookup (https://dnsrobot.net/dns-lookup)
      - WHOIS Lookup (https://dnsrobot.net/whois-lookup)
      - SSL Checker (https://dnsrobot.net/ssl-checker)
      - SPF Checker (https://dnsrobot.net/spf-checker)
      - DKIM Checker (https://dnsrobot.net/dkim-checker)
      - DMARC Checker (https://dnsrobot.net/dmarc-checker)
      - MX Lookup (https://dnsrobot.net/mx-lookup)
      - NS Lookup (https://dnsrobot.net/ns-lookup)
      - IP Lookup (https://dnsrobot.net/ip-lookup)
      - HTTP Headers (https://dnsrobot.net/http-headers-checker)
      - Port Checker (https://dnsrobot.net/port-checker)
   ]],
   homepage = "https://dnsrobot.net",
   license = "MIT",
   maintainer = "DNS Robot <hello@dnsrobot.net>",
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 3.0",
   "lua-cjson >= 2.1",
   "luasec >= 1.0",
}
build = {
   type = "builtin",
   modules = {
      dnsrobot = "src/dnsrobot.lua",
   },
}
