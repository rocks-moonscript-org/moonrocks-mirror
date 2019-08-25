package = "ipfinder"
version = "1.0.0-1"
source = {
   url = "git://github.com/ipfinder-io/ip-finder-lua.git"
}
description = {
   summary = "IPFinder Lua Package",
   detailed = [[
     IPFinder Node.js Client Library
     The official Node.js client library for the https://ipfinder.io get details for :
     IP address details (city, region, country, postal code, latitude and more ..)
     ASN details (Organization name, registry,domain,comany_type, and more .. )
     Firewall by supported formats details (apache_allow,  nginx_deny, CIDR , and more ..)
     IP Address Ranges by the Organization name  details (list_asn, list_prefixes , and more ..)
     service status details (queriesPerDay, queriesLeft, key_type, key_info)
     Get Domain IP (asn, organization,country_code ....)
     Get Domain IP history (total_ip, list_ip,organization,asn ....)
     Get list Domain By ASN, Country,Ranges (select_by , total_domain  , list_domain ....)
   ]],
   homepage = "https://www.ipfinder.io/",
   license = "Apache-2.0",
   maintainer = "support@ipfinder.io"
}
dependencies = {
   "lua >= 5.1",
   "lua-requests",
   "inspect"
}
build = {
   type    = "builtin",
   modules = {
      ["ipfinder"] = "ipfinder/ipfinder.lua"
   }
}