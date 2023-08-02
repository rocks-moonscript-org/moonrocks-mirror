package = "ip2locationio"
version = "1.0.0-1"
source = {
   url = "git://github.com/ip2location/ip2location-io-lua.git"
}
description = {
   summary = "IP2Location.io Lua Package",
   detailed = [[
      This Lua package enables user to query for an enriched data set, such as country, region, district, city, latitude & longitude, ZIP code, time zone, ASN, ISP, domain, net speed, IDD code, area code, weather station data, MNC, MCC, mobile brand, elevation, usage type, address type, advertisement category and proxy data with an IP address. It supports both IPv4 and IPv6 address lookup. In addition, this module provides WHOIS lookup api that helps users to obtain domain information, WHOIS record, by using a domain name. The WHOIS API returns a comprehensive WHOIS data such as creation date, updated date, expiration date, domain age, the contact information of the registrant, mailing address, phone number, email address, nameservers the domain is using and much more.
   ]],
   homepage = "https://github.com/ip2location/ip2location-io-lua",
   license = "MIT",
   maintainer = "support@ip2location.com"
}
dependencies = {
   "lua >= 5.3",
   "lua-nums",
   "json-lua",
   "luasocket",
   "urlencode",
   "idna",
   "net-url"
}
build = {
   type    = "builtin",
   modules = {
      ["ipgeolocation"] = "ipgeolocation.lua",
      ["domainwhois"] = "domainwhois.lua",
      ["configuration"] = "configuration.lua"
   }
}