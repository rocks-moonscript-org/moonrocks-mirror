rockspec_format = "3.0"
package = "sunlicense"
version = "0.0.2-1"

source = {
   url = "git+https://github.com/sunlicense-com/sunlicense-lua.git",
   tag = "v0.0.2",
}

description = {
   summary = "Official SunLicense client for Lua — licence validation for FiveM, Garry's Mod and plain Lua.",
   detailed = [[
      Official Lua client for SunLicense, a licence management and anti-piracy
      system for indie software developers.

      Detects its host environment and uses the available HTTP mechanism:
      PerformHttpRequest on FiveM, HTTP on Garry's Mod, or luasocket
      elsewhere. Ships as a single file with no hard dependencies.
   ]],
   homepage = "https://sunlicense.com",
   license = "MIT",
   maintainer = "Hapangama <kasun@hapangama.com>",
   labels = { "license", "licensing", "drm", "anti-piracy", "fivem", "gmod" },
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      sunlicense = "sunlicense.lua",
   },
}
