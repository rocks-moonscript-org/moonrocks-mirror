package = "npssdk"
version = "1.0-8"
source = {
   url = "git://github.com/Ingenico-NPS-Latam/nps-sdk-lua.git",
   tag = "1.0.8"
}
description = {
   summary = "A Lua SDK for Ingenico ePayments - NPS LatAm Services",
   detailed = "This SDK helps you to connect to Ingenico ePayments - NPS LatAm Services",
   homepage = "http://www.nps.com.ar/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luasoap",
   "luasec",
   "md5"
}
build = {
   type = "builtin",
   modules = {
      npssdk = "nps_sdk/npssdk.lua";
      ["npssdk.configuration"] = "nps_sdk/configuration.lua";
      ["npssdk.sanitize"] = "nps_sdk/sanitize.lua";
      ["npssdk.services"] = "nps_sdk/services.lua";
      ["npssdk.soapclient"] = "nps_sdk/soapclient.lua";
      ["npssdk.utils"] = "nps_sdk/utils.lua";
      ["npssdk.version"] = "nps_sdk/version.lua";
   }
}