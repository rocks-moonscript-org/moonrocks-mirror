package = "melipayamak"
version = "1.0.0-1"
source = {
   url = "git://github.com/Melipayamak/melipayamak-Lua",
   tag = "v1.0.0",
}
description = {
   summary = "Meliapayamak Web Service Wrapper for Lua",
   detailed = [[
      Meliapayamak Web Service Wrapper including Rest & Soap for both Sync/Async Versions.
   ]],
   homepage = "https://github.com/Melipayamak/melipayamak-Lua",
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "copas >= 2.0.2",
   "luasocket >= 3.0",
   "ltn12"
}
build = {
    type = "builtin",
    modules = {
      mpRest = "RestClient.lua",
      mpRestAsync = "RestClientAsync.lua",
      mpSoap = "SoapClient.lua",
      mpSoapAsync = "SoapClientAsync.lua"
   },
}