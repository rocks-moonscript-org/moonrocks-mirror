package = "lua-resty-ldap"
version = "0.1.0-0"
source = {
   url = "git://github.com/api7/lua-resty-ldap",
   tag = "v0.1.0"
}

description = {
   summary = "Nonblocking Lua ldap driver library for OpenResty.",
   homepage = "https://github.com/api7/lua-resty-ldap",
   license = "Apache License 2.0",
   maintainer = "Yuansheng Wang <membphis@gmail.com>"
}

dependencies = {
   "lua_pack = 2.0.0-0"
}

build = {
   type = "builtin",
   modules = {
    ["resty.ldap"] = "lib/resty/ldap/init.lua",
    ["resty.ldap.asn1"] = "lib/resty/ldap/asn1.lua",
    ["resty.ldap.ldap"] = "lib/resty/ldap/ldap.lua",
   }
}
