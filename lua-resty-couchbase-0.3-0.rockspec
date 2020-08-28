package = "lua-resty-couchbase"
version = "0.3-0"
source = {
   url = "git+https://github.com/iqiyi/lua-resty-couchbase.git"
}
description = {
   detailed = "lua-resty-couchbase - Lua couchbase client driver for the ngx_lua based on the cosocket API.",
   homepage = "https://github.com/iqiyi/lua-resty-couchbase",
   license = "2bsd"
}
build = {
   type = "builtin",
   modules = {
      ["resty.couchbase"] = "lib/resty/couchbase.lua"
   }
}
