rockspec_format = "3.0"
package = "lua-resty-iyo-auth"
description = {
   summary = "itsyou.online authentication for resty",
   detailed = "",
   license = "Apache v2",
   homepage = "https://github.com/abom/lua-resty-iyo-auth",
   issues_url = "https://github.com/abom/lua-resty-iyo-auth/issues/new",
   maintainer = "Abdelrahman Ghanem",
   labels = {"auth", "resty", "itsyou.online", "iyo"}
}

version = "0.0-1"
source = {
   url = "git://github.com/abom/lua-resty-iyo-auth.git"
}

dependencies = {
   "lua-resty-http",
   "lua-resty-jit-uuid",
   "lua-resty-session",
   "cppjwt"
}

build = {
  type = "builtin",
  modules = {
    ["iyo-auth.config"] = "lib/iyo-auth/config.lua",
    ["iyo-auth.http"] = "lib/iyo-auth/http.lua",
    ["iyo-auth.jwt"] = "lib/iyo-auth/jwt.lua",
    ["iyo-auth.nginx"] = "lib/iyo-auth/nginx.lua",
    ["iyo-auth.oauth"] = "lib/iyo-auth/oauth.lua"
  },
  install = {
    lua = {
      "lib/iyo-login.lua",
      "lib/iyo-logout.lua",
      "lib/iyo-callback.lua",
    }
  },
}
