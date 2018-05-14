package = "r1-lua-resty-waf"
version = "r0.1.0-1"
source = {
   url = "gitrec+https://github.com/arvancloud/lua-resty-waf",
}
description = {
   summary = "Optimized high-performance WAF built on the OpenResty stack",
   homepage = "https://github.com/arvancloud/lua-resty-waf",
   license = "GNU GPLv3",
   maintainer = "Navid <navid@arvancloud.com>"
}
dependencies = {
   "lua >= 5.1",
   "luarocks-fetch-gitrec",
}
build = {
   type = "make",
   install_target = "install",
}
