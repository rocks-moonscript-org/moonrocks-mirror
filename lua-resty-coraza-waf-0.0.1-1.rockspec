package = "lua-resty-coraza-waf"
version = "0.0.1-1"
source = {
   url = "https://github.com/AlinsRan/lua-resty-coraza-waf/releases/download/v0.0.1/lua-resty-coraza-waf-0.0.1.tar.gz",
   md5 = "7a3e67d37d9537fe08ab70358572095c",
   dir = "lua-resty-coraza-waf-0.0.1",
}

description = {
   summary = "Coraza WAF with the OWASP CRS for OpenResty, through LuaJIT FFI",
   detailed = [[
The release ships coraza_waf.so prebuilt for Linux x86_64 and aarch64
(glibc 2.28 or later), so installing needs neither Go nor libre2.
]],
   homepage = "https://github.com/AlinsRan/lua-resty-coraza-waf",
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
