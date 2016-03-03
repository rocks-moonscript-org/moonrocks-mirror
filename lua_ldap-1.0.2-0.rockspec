package="lua_ldap"
version="1.0.2-0"
source = {
  url = "https://github.com/mashape/lua-ldap/archive/1.0.2.tar.gz",
  dir = "lua-ldap-1.0.2",
  tag = "1.0.2"
}
description = {
  summary = "Simple interface from Lua to an LDAP Client",
  detailed = [[
    Simple interface from Lua to an LDAP client.
  ]],
  homepage = "https://github.com/mashape/lua-ldap",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.3"
}
external_dependencies = {
  LIBLDAP = {
    header = "ldap.h",
    library = "ldap",
  }
}
build = {
  type = "builtin",
    modules = {
    ["lua_ldap"] = {
      sources = { "src/lua_ldap.c" },
      libdirs = "$(LIBLDAP_LIBDIR)",
      incdirs = "$(LIBLDAP_INCDIR)",
      libraries = { "ldap" }
    }
  }
}
