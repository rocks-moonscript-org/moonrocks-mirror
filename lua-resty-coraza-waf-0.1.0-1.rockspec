package = "lua-resty-coraza-waf"
version = "0.1.0-1"
-- the published copy also carries source.md5, added by ci/package.sh
source = {
   url = "https://github.com/api7/lua-resty-coraza-waf/releases/download/v0.1.0/lua-resty-coraza-waf-0.1.0.tar.gz",
   md5 = "a27dda1a2f6aba8a4119c0aa8c2003ea",
   dir = "lua-resty-coraza-waf-0.1.0",
}

description = {
   summary = "Coraza WAF with the OWASP CRS for OpenResty, through LuaJIT FFI",
   detailed = [[
The release ships coraza_waf.so prebuilt for Linux x86_64 and aarch64
(glibc 2.28 or later), so installing needs neither Go nor libre2.
]],
   homepage = "https://github.com/api7/lua-resty-coraza-waf",
   license = "Apache License 2.0",
}

supported_platforms = { "linux" }

dependencies = {}

build = {
   type = "make",
   build_variables = {},
   install_variables = {
      LIBDIR = "$(LIBDIR)",
      LUADIR = "$(LUADIR)",
   },
}
