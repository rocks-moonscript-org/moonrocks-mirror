rockspec_format = "3.0"
package = "lua-gdpr-iab-tcfv2"
version = "0.2.1-1"
source = {
   url = "git+https://github.com/peczenyj/lua-gdpr-iab-tcfv2.git",
   tag = "v0.2.1"
}
description = {
   summary = "A high-performance, zero-dependency, version-agnostic Lua parser and validator for IAB TCF v2.x.",
   detailed = [[
      lua-gdpr-iab-tcfv2 is a production-ready, JIT-optimized Lua library for handling
      IAB Transparency and Consent Framework (TCF) v2.x strings.

      It is specifically designed for high-throughput middleware environments such as
      OpenResty and HAProxy, featuring lazy decoding, zero external dependencies,
      and field-level structural parity with the Perl reference implementation
      verified against a 1,024-row Golden Corpus.
   ]],
   homepage = "https://github.com/peczenyj/lua-gdpr-iab-tcfv2",
   license = "MIT",
   maintainer = "Tiago Peczenyj <tiago.peczenyj+lua@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
test_dependencies = {
   "busted",
   "luacheck",
   "luacov",
   "luacov-coveralls"
}
build = {
   type = "builtin",
   modules = {
      ["gdpr.iab.tcfv2"] = "src/gdpr/iab/tcfv2/init.lua",
      ["gdpr.iab.tcfv2.base64"] = "src/gdpr/iab/tcfv2/base64.lua",
      ["gdpr.iab.tcfv2.bitstream"] = "src/gdpr/iab/tcfv2/bitstream.lua",
      ["gdpr.iab.tcfv2.common"] = "src/gdpr/iab/tcfv2/common.lua",
      ["gdpr.iab.tcfv2.core"] = "src/gdpr/iab/tcfv2/core.lua",
      ["gdpr.iab.tcfv2.parser"] = "src/gdpr/iab/tcfv2/parser.lua",
      ["gdpr.iab.tcfv2.allowed_vendors"] = "src/gdpr/iab/tcfv2/allowed_vendors.lua",
      ["gdpr.iab.tcfv2.disclosed_vendors"] = "src/gdpr/iab/tcfv2/disclosed_vendors.lua",
      ["gdpr.iab.tcfv2.publisher_tc"] = "src/gdpr/iab/tcfv2/publisher_tc.lua",
      ["gdpr.iab.tcfv2.router"] = "src/gdpr/iab/tcfv2/router.lua",
      ["gdpr.iab.tcfv2.validator"] = "src/gdpr/iab/tcfv2/validator.lua"
   }
}
test = {
   type = "busted"
}
