-- Copyright 2023 IPQualityScore LLC
package = "ipqs-db-reader"
version = "1.0-1"
source = {
   url = "git://github.com/IPQualityScore/LuaIPQSDBReader",
   tag = "v1.0",
}
description = {
   summary = "IPQualityScore IP Reputation Flat File Database Reader",
   detailed = [[
      IPQualityScore offers a single file database engine that provides direct access to a
      copy of our entire IP address reputation database for on-premise deployment. The proxy
      detection database includes anonymous proxies, botnets, VPNs, TOR, and high risk IP
      addresses. The IPQS on-premise local database includes data from our threat intelligence
      feeds and all data points from our IP address reputation API.
   ]],
   homepage = "https://www.ipqualityscore.com/documentation/ip-reputation-database/lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
  type = "builtin",
  modules = {
    ["ipqs.bitmasks"] = "ipqs/bitmasks.lua",
    ["ipqs.ip"] = "ipqs/ip.lua",
    ["ipqs.reader"] = "ipqs/reader.lua",
    ["ipqs.record"] = "ipqs/record.lua",
    ["ipqs.uvarint"] = "ipqs/uvarint.lua"
  },
  copy_directories = { "doc" }
}
