package = "lua-resty-casbin"
version = "1.0.0-1"
source = {
   url = "git+https://gitee.com/gridsoft/lua-resty-casbin",
   tag = "v1.0.0"
}
description = {
   summary = "Casbin authorization plugin for OpenResty",
   detailed = [[
      lua-resty-casbin is an authorization plugin/middleware for OpenResty, based on lua-casbin.
   ]],
   detailed = "lua-resty-casbin is an authorization plugin/middleware for OpenResty, based on lua-casbin.",
   homepage = "https://github.com/casbin-lua/lua-resty-casbin",
   license = "Apache License 2.0",
   maintainer = "admin@casbin.org"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["casbin_middleware.CasbinMiddleware"] = "casbin_middleware/CasbinMiddleware.lua"
   }
}