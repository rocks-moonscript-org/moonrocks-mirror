package = "lua-resty-postgres"
version = "1.0-0"
source = {
   url = "git://github.com/paragasu/lua-resty-postgres.git",
   tag = "v1.0-0"
}
description = {
   summary  = "Nonblocking Lua PostgreSQL driver library for ngx_lua",
   homepage = "https://github.com/paragasu/lua-resty-postgres",
   license  = "BSD",
   maintainer = "Jeffry L. <paragasu@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.postgres"] = "lib/resty/postgres.lua",
   }
}
